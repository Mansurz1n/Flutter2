import 'package:english_words/english_words.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';






void main() {
  runApp(const BasilApp());
}

class BasilApp extends StatelessWidget {
  const BasilApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    const basilTheme = BasilTheme();
    return MaterialApp(
      title: "Basil",
      theme: basilTheme.toThemeData(),
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'SkinVision',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange)
        ),
        home: MyHomePage(),
      ),
    );
  }
}
class MyHomePage extends StatelessWidget(
  @override
  Widget build(BuildContext context){
    var
  }
)