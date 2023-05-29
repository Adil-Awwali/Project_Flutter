import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projectuts_2/homepage.dart';
import 'package:projectuts_2/main.dart';

class MyApp3 extends StatelessWidget {
  const MyApp3({super.key});
  @override
  Widget build(BuildContext context) {
    var header1 = "Gallery";
    return Scaffold(
// APPBAR

      appBar: AppBar(
        foregroundColor: Color.fromARGB(255, 255, 255, 255),
        backgroundColor: Color.fromARGB(255, 243, 90, 44),
        title: Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Text(header1),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const Home()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.image),
              title: Text("Gallery"),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const MyApp3()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: Text("Exit"),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const MyApp()));
              },
            )
          ],
        ),
      ),

// BODY

      body: Column(
        children: [
          Image.asset('assets/F_Logo.png'),
          Image.asset('assets/FLUTTER.png')
        ],
      ),

// FLOATING ACTION BUTTON

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
          height: 50,
          width: 50,
          child: FloatingActionButton(
            foregroundColor: Color.fromARGB(255, 255, 255, 255),
            backgroundColor: Color.fromARGB(255, 243, 90, 44),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const Home()));
            },
            child: const Icon(Icons.arrow_back),
          )),

// BOTTOM NAVIGATION BAR

      bottomNavigationBar: BottomAppBar(
        height: 50,
        color: Color.fromARGB(255, 243, 90, 44),
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.search,
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
