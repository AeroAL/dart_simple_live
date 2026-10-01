import 'package:flutter/material.dart';

void main() {
  runApp(const ProbeApp());
}

class ProbeApp extends StatelessWidget {
  const ProbeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'p4_webview',
      home: Scaffold(body: Center(child: Text('p4_webview'))),
    );
  }
}
