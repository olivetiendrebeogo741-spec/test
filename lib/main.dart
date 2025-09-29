import 'package:couleur/event.dart';
import 'package:couleur/formulair.dart';
import 'package:couleur/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: _MyApp(),debugShowCheckedModeBanner: false,));
}
class _MyApp extends StatefulWidget {
  const _MyApp({super.key});

  @override
  State<_MyApp> createState() => __MyAppState();
}

class __MyAppState extends State<_MyApp> {

  int _curentIndex = 0;
  setcurrentIndex(int Index){
    setState(() {
      _curentIndex = Index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: [
          Text('Acueil'),
          Text('Apllication'),
          Text('Formulaire'),
        ][_curentIndex],
      ),

      body: [
        HomePage(),
        EventApp(),
        FormulairApp()
      ][_curentIndex],

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        currentIndex: _curentIndex,
         onTap: (Index) => setcurrentIndex(Index),
        elevation: 10,
        backgroundColor: Colors.lightBlueAccent,
        iconSize: 32,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
            ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Date'
            ),

            BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Ajout'
            ),
          
          
        ],
      ),
    );
  }
}
