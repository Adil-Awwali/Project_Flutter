import 'package:flutter/material.dart';
import 'package:projectuts_2/homepage.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var header1 = "Welcome";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
// APPBAR

        appBar: AppBar(
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          backgroundColor: const Color.fromARGB(255, 243, 90, 44),
          title: Center(child: Text(header1)),
        ),

// BODY

        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => const MyApp()));
                  },
                  child: Image.asset('assets/FLUTTER.png')),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                        width: 5,
                        color: Color.fromARGB(255, 243, 90, 44),
                      )),
                      labelText: "Username"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                        width: 5,
                        color: Color.fromARGB(255, 243, 90, 44),
                      )),
                      labelText: "Password"),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                  backgroundColor: const Color.fromARGB(255, 243, 90, 44),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const Home()));
                },
                child: const Text("Login"),
              )
            ],
          ),
        ));
  }
}
