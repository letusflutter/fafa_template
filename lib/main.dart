import 'package:demo/auto_scroll.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Autoscrolling Images'),
        ),
        body: AutoscrollingImages(),
      ),
    );
  }
}

