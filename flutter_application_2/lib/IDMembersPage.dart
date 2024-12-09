
import 'package:flutter/material.dart';

class IDMembersPage extends StatelessWidget {
  const IDMembersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ENHYPEN Members'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          _buildMemberCard('Heeseung', 'assets/Images/Heeseung.png', 
            'Lee Heeseung est un membre sud-corén, il est le plus âgé du groupe (15/10/2001). Il est le chanteur principal, il s\'est entraîné pendant 3ans et 1 mois avant de participer à l\'émission I-LAND. Heeseung a été classé 5ème lors de la final de l\'émission.'),
          _buildMemberCard('Jay', 'assets/Images/Jay.png', 
            'Park Jay Jongseong (20/04/2002) est un membre américain, il est danceur principal. Il a été classé 2ème lors de I-LAND. Il s\'est entraîné 2 ans et 11 mois avant de débuter.'),
          _buildMemberCard('Jake', 'assets/Images/Jake.png', 
            'Sim Jake Jaeyun (15/11/2002) est un membre australien, il chanteur principal. Il a été classé 3ème lors de l\'émission, il s\'est entraîné 9 mois avant de débuter.'),
          _buildMemberCard('Sunghoon', 'assets/Images/Sunghoon.png', 
            'Park Sunghoon (08/12/2002) est un membre sud-coréen. Avant de particper à l\'émission il était un patineur artistique très connu. Il est sub-vocalist est c\'est entraîné 2 ans et 1 mois avant de débuter à la 6ème place.'),
          _buildMemberCard('Sunoo', 'assets/Images/Sunoo.png', 
            'Kim Sunoo (24/06/2003) est un membre sud-coréen, il est le dernier membre a être intégré au groupe, il a été choisi par les producteur. Il s\'est entraîné 10 mois avant de débuter.'),
          _buildMemberCard('Jungwon', 'assets/Images/Jungwon.png', 
            'Yang Jungwon (09/02/2004) est un membre sud-coréen. Il est le leader et vocalist du groupe. Il est arrivé 1er lors de l\'émission I-LAND. Il s\'est entraîné 1 ans et 4 mois avant de débuter.'),
          _buildMemberCard('Ni-Ki', 'assets/Images/Ni-Ki.png', 
            'Nishimura Ri-Ki (09/12/2005) est un membre japonais et est le plus jeune du groupe. Il est le danceur principal du groupe et est considéré comme étant l\'un des meilleurs danceurs de s a génération. Lors de l\'émission il est arrivé à la 4ème place et s\'est entraîné 8 mois avant de débuter.'),
        ],
      ),
    );
  }

  Widget _buildMemberCard(String name, String imagePath, String description) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Member's image
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 1500,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description,
              style: const TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
