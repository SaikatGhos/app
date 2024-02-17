import 'package:flutter/material.dart';

class Democard extends StatelessWidget {
  const Democard({super.key,
    required this.typeInfo,
    required this.typeButton
  });

  final String typeInfo;
  final String typeButton;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    typeInfo,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  // Text(
                  //   'Card description goes here. You can add more text as needed.',
                  //   style: TextStyle(fontSize: 14),
                  // ),
                ],
              ),
            ),
            SizedBox(width: 16),
            Row(
              children: [                
                SizedBox(width: 8),
                ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF0D47A1),
                          Color(0xFF1976D2),
                          Color(0xFF42A5F5),
                        ],
                      ),
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(16.0),
                    textStyle: const TextStyle(fontSize: 12),
                  ),
                  onPressed: () {},
                  child:  Text(typeButton),
                ),
              ],
            ),
          ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}