import 'package:flutter/material.dart';
// ignore: unused_import
import 'Structure_Android.dart';
import 'AccueilPage.dart';
import 'MonComptePage.dart';
import 'IDMembersPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ENHYPEN',
      theme: ThemeData(
     
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 27, 18, 186)),
        useMaterial3: true,
      ),
     initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: 'ENHYPEN'),
        '/accueil': (context) => const AccueilPage(),
        '/mon-compte': (context) => const MonComptePage(),
        '/IDMembers': (context) => const IDMembersPage(),
      },
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/Acceuil'),
              child: const Text('Aller à Mon Compte'),
              ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/IDMembers'),
              child: const Text('Aller à IDMembers'),
              ),
          ],
        ),
      ),
    );
  }
}
