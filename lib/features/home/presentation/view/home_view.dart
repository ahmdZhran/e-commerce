import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'this is home view',
          style: TextStyle(color: Colors.amber),
        ),
      ),
    );
  }
}
