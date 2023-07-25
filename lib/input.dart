import 'package:flutter/material.dart';
import 'package:projectuts_2/gallery.dart';
import 'package:projectuts_2/homepage.dart';
import 'package:projectuts_2/main.dart';

class Input extends StatefulWidget {
  const Input({super.key});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    var header1 = "Input";
    return Scaffold(
      
// APPBAR

      appBar: AppBar(
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        backgroundColor: const Color.fromARGB(255, 243, 90, 44),
        title: Center(child: Text(header1)),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 243, 90, 44),
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              child: Row(children: [
                Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 243, 90, 44),
                ),
                Text(
                  'Account',
                  style: TextStyle(
                    color: Color.fromARGB(255, 243, 90, 44),
                  ),
                ),
              ]),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              title: const Text(
                "Home",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
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
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              title: const Text(
                "Gallery",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
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
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              title: const Text(
                "Exit",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
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

// BODY

      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 5,
                      color: Color.fromARGB(255, 243, 90, 44),
                    )),
                    labelText: "Title"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 5,
                      color: Color.fromARGB(255, 243, 90, 44),
                    )),
                    labelText: "Subject"),
                maxLines: 10,
                minLines: 1,
              ),
            ),/* 
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Color.fromARGB(255, 255, 255, 255),
                backgroundColor: Color.fromARGB(255, 243, 90, 44),
              ),
              onPressed: () {},
              child: Text("Post"),
            ) */
          ],
        ),
      ),

// FLOATING ACTION BUTTON

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
          height: 50,
          width: 50,
          child: FloatingActionButton(
            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            backgroundColor: const Color.fromARGB(255, 243, 90, 44),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const Home()));
            },
            child: const Icon(Icons.arrow_back),
          )),

// BOTTOM NAVIGATION BAR

      bottomNavigationBar: BottomAppBar(
        height: 50,
        color: const Color.fromARGB(255, 243, 90, 44),
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: IconButton(
                icon: const Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const Home()));
                },
              ),
            ),
            IconButton(
              icon: const Icon(
                Icons.image,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const MyApp3()));
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const MyApp()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
