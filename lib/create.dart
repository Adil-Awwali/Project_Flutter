import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:projectuts_2/gallery.dart';
import 'package:projectuts_2/homepage.dart';
import 'package:projectuts_2/main.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({super.key});

  @override
  State<CreateTask> createState() => _Createtaskstate();
}

class _Createtaskstate extends State<CreateTask> {
  var judulController = TextEditingController();
  var kontenController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var header1 = "Create";
    return Scaffold(
// APPBAR

      appBar: AppBar(
        foregroundColor: const Color.fromARGB(255, 243, 90, 44),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        /* Colors.transparent,
        elevation: 0, */
        title: Center(child: Text(header1)),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 90, 44),
              ),
              child: Row(children: [
                Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                Text(
                  'Account',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ]),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: const Color.fromARGB(255, 243, 90, 44),
              ),
              title: const Text(
                "Home",
                style: TextStyle(
                  color: const Color.fromARGB(255, 243, 90, 44),
                ),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const Home()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.image,
                color: const Color.fromARGB(255, 243, 90, 44),
              ),
              title: const Text(
                "Gallery",
                style: TextStyle(
                  color: const Color.fromARGB(255, 243, 90, 44),
                ),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const MyApp3()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.exit_to_app,
                color: const Color.fromARGB(255, 243, 90, 44),
              ),
              title: const Text(
                "Exit",
                style: TextStyle(
                  color: const Color.fromARGB(255, 243, 90, 44),
                ),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const MyApp()));
              },
            )
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: TextField(
                controller: judulController,
                decoration: const InputDecoration(
                    hintText: "Judul task",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 5,
                            color: Color.fromARGB(255, 243, 90, 44)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: TextField(
                controller: kontenController,
                decoration: const InputDecoration(
                    hintText: "konten task",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 5,
                            color: Color.fromARGB(255, 243, 90, 44)))),
                maxLines: 10,
                minLines: 1,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 243, 90, 44),
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                ),
                onPressed: () async {
                  Map<String, String> headers = {
                    'Content-Type': 'application/json',
                    'Accept': 'application/json'
                  };
                  var response = await http.post(
                      Uri.parse('http://localhost:1337/api/tasks'),
                      headers: headers,
                      body: jsonEncode({
                        "data": {
                          "Judul": judulController.text,
                          "konten": kontenController.text,
                        }
                      }));
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const Home()));
                  ;
                },
                child: const Text("Save"))
          ],
        ),
      ),
    );
  }
}
