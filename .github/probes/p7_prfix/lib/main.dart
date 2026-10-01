import 'package:flutter/material.dart';

void main() {
  runApp(const ProbeApp());
}

class ProbeApp extends StatelessWidget {
  const ProbeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'p7_prfix',
      home: Scaffold(body: Center(child: Text('p7_prfix'))),
    );
  }
}
