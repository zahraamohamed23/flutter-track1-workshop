// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LighterScreen extends StatefulWidget {
  const LighterScreen({super.key});

  @override
  State<LighterScreen> createState() => _LighterScreenState();
}

class _LighterScreenState extends State<LighterScreen> {
  bool isOn = false;

  void tooleLight() {
    setState(() {
      isOn = !isOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.lightbulb,
              size: 150,
              color: isOn ? Colors.blueGrey : Colors.white,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: tooleLight,
              style: ElevatedButton.styleFrom(
                backgroundColor: isOn ? Colors.green : Colors.red,
              ),
              child: Text(isOn ? 'On' : 'Off'),
            ),
          ],
        ),
      ),
    );
  }
}
