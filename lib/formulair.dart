import 'package:flutter/material.dart';

class FormulairApp extends StatelessWidget {
  const FormulairApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Form(
        child: Column(
          children: [

            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: TextFormField(
               decoration: InputDecoration(
                labelText: 'Nom de famille',
                hintText: 'Veuillez entrer votre nom de famille',
                border: OutlineInputBorder(),
               ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: TextFormField(
               decoration: InputDecoration(
                labelText: 'Prénom',
                hintText: 'Veuillez entrer votre Prénom',
                border: OutlineInputBorder(),
               ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: TextFormField(
               decoration: InputDecoration(
                labelText: 'Lieu de naissance',
                hintText: 'Veuillez entrer votre lieu de naissance',
                border: OutlineInputBorder(),
               ),
              ),
            ),

            SizedBox(height: 10,),
            SizedBox(
              width: double.infinity,
              height: 40,
           child: ElevatedButton(onPressed: () {} , child: Text('Envoyer')),
            ),
          ],
        )),
    );
  }
}