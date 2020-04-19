import 'package:multilanguage/multilanguage.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// SETS THE LANGUAGE INSIDE THE INITIAL APP LAUNCH
    /// YOU COULD SET IT ANYWHERE TO CHANGE THE CURRENT LANGUAGE
    MultiLanguage.setLanguage(path: Languages.en, context: context);

    return MaterialApp(
      routes: {
        '/Home': (context) => HomeView(),
      },
    );
  }
}

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /// YOU COULD USE TXT SHORTCUT TO SEARCH FOR THE TEXT
        title: Text(txt('title')),
      ),
      body: Container(),
    );
  }
}
