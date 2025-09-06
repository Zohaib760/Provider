

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart%20';

import '../Provider/theme_provider.dart';

class DarkTheme extends StatefulWidget {
  const DarkTheme({super.key});

  @override
  State<DarkTheme> createState() => _DarkThemeState();
}

class _DarkThemeState extends State<DarkTheme> {
  @override
  Widget build(BuildContext context) {
   final themeChanger=  Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
           title:   Text("Theme Changer "),
        centerTitle: true,
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
    title: Text("Light Mode"),
      value: ThemeMode.light,
      groupValue: themeChanger.themeMode,
      onChanged: themeChanger.changeMode),
          RadioListTile<ThemeMode>(
              title: Text("Dark Mode"),
              value: ThemeMode.dark,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.changeMode),
          RadioListTile<ThemeMode>(
              title: Text("System Mode"),
              value: ThemeMode.system,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.changeMode),
          Icon(Icons.favorite),
        ],
      ),
    );
  }
}
