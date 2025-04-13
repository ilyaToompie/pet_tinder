import 'package:flutter/material.dart';

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
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Card(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 40,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Image.network(
                            'https://cdn.dribbble.com/userupload/5357265/file/original-b0e49c57972aadd8d0bf358d2decaf08.png?resize=752x&vertical=center',
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Loona, 3 years',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Cheerful and charming',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
