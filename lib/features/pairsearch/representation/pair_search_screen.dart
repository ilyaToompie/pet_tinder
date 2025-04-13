import 'package:flutter/material.dart';
import 'package:pet_tinder/core/pet_card/representation/pet_card.dart';

class PairSearchScreen extends StatelessWidget {
  const PairSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text('find pair'),
            const SizedBox(height: 20),
            Expanded(
              child: Stack(alignment: Alignment.center, children: [PetCard()]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.black,
                  child: Icon(Icons.clear, color: Colors.white, size: 28),
                ),
                const SizedBox(width: 32),
                CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.purple,
                  child: Icon(Icons.favorite, color: Colors.white, size: 28),
                ),
              ],
            ),
            const SizedBox(height: 120),
          ],
        ),
      ),
    );
  }
}
