import 'package:flutter/material.dart';
import 'package:volume_controller/volume_controller.dart';
import 'package:wakelock_plus/wakelock_plus.dart';
import 'package:screen_brightness/screen_brightness.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    VolumeController.instance.addListener((d) {});
  } catch (_) {}
  try {
    await WakelockPlus.enable();
  } catch (_) {}
  try {
    await ScreenBrightness().applicationScreenBrightness;
  } catch (_) {}
  runApp(const ProbeApp());
}

class ProbeApp extends StatelessWidget {
  const ProbeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'p3_audio',
      home: Scaffold(body: Center(child: Text('p3_audio'))),
    );
  }
}
