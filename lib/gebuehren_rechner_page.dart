import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:excel/excel.dart';

class GebuehrenRechnerPage extends StatefulWidget {
  const GebuehrenRechnerPage({super.key});

  @override
  _GebuehrenRechnerPageState createState() => _GebuehrenRechnerPageState();
}

class _GebuehrenRechnerPageState extends State<GebuehrenRechnerPage> {
  List<List<String>> _excelData = [];

  Future<void> _pickAndReadExcelFile() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['xlsx'],
      );

      if (result != null && result.files.single.bytes != null) {
        var bytes = result.files.single.bytes!;
        var excel = Excel.decodeBytes(bytes);

        List<List<String>> data = [];

        for (var table in excel.tables.keys) {
          for (var row in excel.tables[table]!.rows) {
            List<String> filteredRow = row
                .where((cell) => cell != null)
                .map((cell) => cell!.value.toString())
                .toList();

            if (filteredRow.isNotEmpty) {
              data.add(filteredRow);
            }
          }
          break; // Nur die erste Tabelle lesen
        }

        setState(() {
          _excelData = data;
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Fehler beim Lesen der Datei: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gebührenrechner')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: _pickAndReadExcelFile,
            child: const Text('Excel-Datei auswählen'),
          ),
          Expanded(
            child: _excelData.isEmpty
                ? const Center(child: Text('Keine Daten geladen'))
                : ListView.builder(
                    itemCount: _excelData.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(_excelData[index].join(' | ')),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
