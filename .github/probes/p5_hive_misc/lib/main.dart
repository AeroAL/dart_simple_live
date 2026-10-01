import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:package_info_plus/package_info_plus.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await PackageInfo.fromPlatform();
  runApp(const ProbeApp());
}

class ProbeApp extends StatelessWidget {
  const ProbeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'p5_hive_misc',
      home: Scaffold(body: Center(child: Text('p5_hive_misc'))),
    );
  }
}
