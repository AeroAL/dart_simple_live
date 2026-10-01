import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MediaKit.ensureInitialized();
  runApp(const ProbeApp());
}

class ProbeApp extends StatelessWidget {
  const ProbeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'p1_mediakit',
      home: Scaffold(body: Center(child: Text('p1_mediakit'))),
    );
  }
}
