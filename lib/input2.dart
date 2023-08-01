import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Input2 extends StatefulWidget {
  const Input2({super.key, required this.judul, required this.konten, required this.id});
  final String judul;
  final String konten;
  final int id;
  @override
  State<Input2> createState() => _Input2State();
}

class _Input2State extends State<Input2> {
  var judulController = TextEditingController();
  var kontenController = TextEditingController();

  @override
  void initState() {
    super.initState();
    judulController.text = widget.judul;
    kontenController.text = widget.konten;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit data")),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: judulController,
              decoration: InputDecoration(hintText: "Judul task"),
            ),
            TextField(
              controller: kontenController,
              decoration: InputDecoration(hintText: "konten task"),
            ),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () async {
                  var id = widget.id;
                  Map<String, String> headers = {
                    'Content-Type': 'application/json',
                    'Accept': 'application/json'
                  };
                  var response = await http.put(
                      Uri.parse('http://localhost:1337/api/tasks/$id'),
                      headers: headers,
                      body: jsonEncode({
                        "data": {
                          "Judul": judulController.text,
                          "konten": kontenController.text,
                        }
                      }));
                },
                child: Text("Simpan"))
          ],
        ),
      ),
    );
  }
}
