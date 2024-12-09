import 'package:flutter/material.dart';

class MonComptePage extends StatelessWidget {
  const MonComptePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mon Compte'),
      ),
      body: const Center(
        child: Text(
          'Voici les informations de votre compte.',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
