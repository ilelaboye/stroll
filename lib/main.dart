import 'package:flutter/material.dart';

void main() {
  runApp(const StrollApp());
}

class StrollApp extends StatelessWidget {
  const StrollApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
