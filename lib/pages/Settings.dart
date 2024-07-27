import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("设置"),
      ),
    );
  }
}