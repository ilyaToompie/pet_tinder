import 'package:flutter/material.dart';

class PairSearchScreen extends StatelessWidget {
  const PairSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SafeArea(child: Column(children: [Text("data")])),
        ],
      ),
    );
  }
}
