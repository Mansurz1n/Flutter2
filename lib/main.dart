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
    
    return MaterialApp(
        title: 'SkinVision',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange)
        ),
        home: MyHomePage(),
      );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  var selectedIndex = 0; 
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
   static const List<Widget> widgetOptions = <Widget>[
    Text('Index 1: Home', style:optionStyle),
    Text('Index 2: Mensagem', style:optionStyle),
    Text('Index 3: Camera', style:optionStyle),
    Text('Index 4: Sol', style:optionStyle),
    Text('Index 5: Mais Resultados', style:optionStyle)
    ];

  void onItemTapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context){
   return LayoutBuilder(builder:(context, constraints){
    return Scaffold(
      body: Center(child: widgetOptions.elementAt(selectedIndex)),
      bottomNavigationBar:BottomNavigationBar(items: const<BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'Mensagem'),
        BottomNavigationBarItem(icon: Icon(Icons.camera_alt), label: 'Camera'),
        BottomNavigationBarItem(icon: Icon(Icons.wb_sunny), label: 'Sol'),
        BottomNavigationBarItem(icon: Icon(Icons.more_vert), label: '+'),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.blueGrey,
      onTap: onItemTapped,
      )
    );
   }
   );
  }
  
} 