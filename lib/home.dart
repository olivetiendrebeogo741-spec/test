import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            // Première card
            Card(
              margin: EdgeInsets.zero, // supprime les marges extérieures
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.access_time_sharp),
                    title: Text("Transfert from others banks"),
                    subtitle: Text('money busness'),
                    trailing: Icon(Icons.ac_unit),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 46.0),
                    child: Divider(height: 1, thickness: 1),
                  ), // Trait entre les deux ListTile
                  ListTile(
                    leading: Icon(Icons.add),
                    title: Text("Transfert from others banks"),
                    subtitle: Text('money busness'),
                    trailing: Icon(Icons.ac_unit),
                  ),
                ],
              ),
            ),
        
            // Une autre card séparée
            Card(
              margin: EdgeInsets.only(top: 8), // espace optionnel entre les groupes
              child: ListTile(
                leading: Icon(Icons.paragliding),
                title: Text("Transfert from others banks"),
                subtitle: Text('money busness'),
                trailing: Icon(Icons.ac_unit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}