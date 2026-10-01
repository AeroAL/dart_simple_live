import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

final DynamicLibrary _kernel32 = DynamicLibrary.open('kernel32.dll');
final int Function() _getCurrentProcess = _kernel32
    .lookupFunction<IntPtr Function(), int Function()>('GetCurrentProcess');
final int Function(int, int) _terminateProcess = _kernel32.lookupFunction<
    IntPtr Function(IntPtr, Uint32), int Function(int, int)>('TerminateProcess');

void terminateSelf() {
  _terminateProcess(_getCurrentProcess(), 0);
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();
  windowManager.addListener(_Listener());
  await windowManager.setPreventClose(true);
  windowManager.waitUntilReadyToShow(
      const WindowOptions(title: 'p6_terminate'), () async {
    await windowManager.show();
  });
  runApp(const ProbeApp());
}

class _Listener with WindowListener {
  @override
  void onWindowClose() {
    terminateSelf();
  }
}

class ProbeApp extends StatelessWidget {
  const ProbeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'p6_terminate',
      home: Scaffold(body: Center(child: Text('p6_terminate'))),
    );
  }
}
