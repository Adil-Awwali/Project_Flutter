import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projectuts_2/gallery.dart';
import 'package:projectuts_2/input.dart';
import 'package:projectuts_2/main.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    var header1 = "Homepage";
    //final List<String> entries = <String>['A', 'B', 'C', 'D', 'E', 'F', 'G'];
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
            icon: Icon(Icons.search),
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
              child: Text(
                'Account',
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
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

// BODY#1

      /* body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const MyApp3(),
                  ),
                );
              },
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(255, 243, 90, 44), width: 5),
                    borderRadius: BorderRadius.circular(90)),
                child: Center(child: Text('Entry ${entries[index]}')),
              ));
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ), */
      /* body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 243, 90, 44), width: 5),
                borderRadius: const BorderRadius.all(Radius.circular(90))),
            child: const Center(child: Text('Entry A')),
          ),
          const Divider(
            height: 16,
            color: Colors.transparent,
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 243, 90, 44), width: 5),
                borderRadius: const BorderRadius.all(Radius.circular(90))),
            child: const Center(child: Text('Entry B')),
          ),
          const Divider(
            height: 16,
            color: Colors.transparent,
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 243, 90, 44), width: 5),
                borderRadius: const BorderRadius.all(Radius.circular(90))),
            child: const Center(child: Text('Entry C')),
          ),
        ],
      ), */

// BODY#2

      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          Row(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const Input(),
                      ),
                    );
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    /* decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 243, 90, 44),
                        border: Border.all(
                          color: const Color.fromARGB(
                              255, 255, 255, 255), /* width: 5 */
                        ),
                        borderRadius: BorderRadius.circular(15)), */
                    child: const Center(
                        child: Icon(
                      Icons.note_add,
                      size: 50,
                      color: const Color.fromARGB(255, 243, 90, 44),
                    ) /* child: const Center(
                    child: Text(
                      'Entry A',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20),
                    ) */
                        ),
                  )),
              const Spacer(),
              Container(
                height: 100,
                width: 100,
                /* decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 243, 90, 44),
                    border: Border.all(
                      color: const Color.fromARGB(
                          255, 255, 255, 255), /* width: 5 */
                    ),
                    borderRadius: BorderRadius.circular(15)), */
                child: const Center(
                    child: Icon(
                  Icons.note_add,
                  size: 50,
                  color: const Color.fromARGB(255, 243, 90, 44),
                )
                    /* child: const Center(
                    child: Text(
                  'Entry B',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
                ) */
                    ),
              ),
              const Spacer(),
              Container(
                height: 100,
                width: 100,
                /* decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 243, 90, 44),
                    border: Border.all(
                      color: const Color.fromARGB(
                          255, 255, 255, 255), /* width: 5 */
                    ),
                    borderRadius: BorderRadius.circular(15)), */
                child: const Center(
                    child: Icon(
                  Icons.note_add,
                  size: 50,
                  color: const Color.fromARGB(255, 243, 90, 44),
                )
                    /* child: const Center(
                    child: Text(
                  'Entry C',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
                ) */
                    ),
              ),
            ],
          ),
        ],
      ),

// FLOATING ACTION BUTTON

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
          height: 50,
          width: 50,
          child: FloatingActionButton(
            foregroundColor: const Color.fromARGB(255, 243, 90, 44),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const Home()));
            },
            child: const Icon(Icons.arrow_upward),
          )),

// BOTTOM NAVIGATION BAR

      bottomNavigationBar: BottomAppBar(
        height: 50,
        color: const Color.fromARGB(255, 255, 255, 255),
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.settings,
                color: const Color.fromARGB(255, 243, 90, 44),
              ),
              onPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: IconButton(
                icon: const Icon(
                  Icons.home,
                  color: const Color.fromARGB(255, 243, 90, 44),
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
                color: const Color.fromARGB(255, 243, 90, 44),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const MyApp3()));
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.exit_to_app,
                color: const Color.fromARGB(255, 243, 90, 44),
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
