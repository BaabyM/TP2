import 'package:flutter/material.dart';

class AccueilPage extends StatelessWidget {
  const AccueilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'ENHYPEN',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'ENHYPEN est le groupe résultant de l’émission I-LAND. '
                        'Il est composé de sept membres : les six finalistes choisis par les votes du public et le septième choisi par les producteurs.',
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/Images/ENHYPEN_2.png',
                width: 200,
                height: 200,
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

