import 'package:flutter/material.dart';
import 'package:background_on_back/background_on_back.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;
        BackgroundOnBack.pop();
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Homepage')),
        body: Center(
          child: Text('Hassle free solution for android BACK press'),
        ),
      ),
    );
  }
}
