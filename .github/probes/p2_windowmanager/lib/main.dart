import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();
  windowManager.waitUntilReadyToShow(
      const WindowOptions(title: 'p2_windowmanager'), () async {
    await windowManager.show();
  });
  runApp(const ProbeApp());
}

class ProbeApp extends StatelessWidget {
  const ProbeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'p2_windowmanager',
      home: Scaffold(body: Center(child: Text('p2_windowmanager'))),
    );
  }
}
