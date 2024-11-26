import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:workshop/core/routes/pages.dart';
import 'package:workshop/core/routes/routes_name.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) =>const MyApp(),
    enabled: true, 
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      initialRoute: RoutesName.calculatorApp,
      onGenerateRoute: AppRoute.generate,
    );
  }
}
