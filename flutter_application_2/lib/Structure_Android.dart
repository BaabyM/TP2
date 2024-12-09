import 'package:flutter/material.dart';
import 'AccueilPage.dart';
import 'MonComptePage.dart';
import 'IDMembersPage.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ENHYPEN',
      theme: ThemeData(primaryColor: const Color.fromARGB(255, 9, 14, 154)),
      home: const MyHomePage(title: 'About ENHYPEN'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  
  static const List<Widget> _pages = <Widget>[
    AccueilPage(),
    MonComptePage(),
    IDMembersPage(),
  ];

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
    });
}
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Menu',
                style: TextStyle(color: Color.fromARGB(255, 78, 1, 1),
                fontSize: 24,
                fontWeight: FontWeight.bold,
                ),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Accueil'),
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                });
                Navigator.pop(context);
              }
            ),

            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Mon compte'),
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                });
                Navigator.pop(context);
                },
            ),

            ListTile(
              leading: const Icon(Icons.seven_k),
              title: const Text('IDMembers'),
              onTap: () {
                setState(() {
                  _selectedIndex = 2;
                });
                Navigator.pop(context);
              },
            ),
          ],
        )
      ),





      backgroundColor: const Color.fromARGB(255, 29, 42, 165),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Mon Compte',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.seven_k),
          label: 'IDMembers',
        ),
      ],
    ),
    );
  }
}