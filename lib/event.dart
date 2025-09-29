import 'package:flutter/material.dart';
import 'package:couleur/widget/form_widget.dart';

class EventApp extends StatelessWidget {
  const EventApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome Back', style: TextStyle(fontSize: 24)),

              Text(
                'Creative Mints',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 12),

              // Barre de recherche
              TextField(
                decoration: InputDecoration(
                  hintText: 'Rechercher...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              SizedBox(height: 16),

              GridView.count(
                crossAxisCount: 2,
                shrinkWrap:
                    true, 
                physics:
                    NeverScrollableScrollPhysics(), 
                children: [
                  
                  // 1er
                  FormWidget(
                    imageUrl:
                        'https://images.pexels.com/photos/20433573/pexels-photo-20433573.jpeg',
                    title: 'Appareil photo',
                    normbre: 6.4,
                    price: 123.00,
                    icon: Icons.sunny,
                  ),
              
                  // 2em
                  FormWidget(
                    imageUrl:
                        'https://cdn.pixabay.com/photo/2015/10/26/09/07/blood-pressure-1006791_960_720.jpg',
                    title: 'Trensiomètre electique',
                    normbre: 5.2,
                    price: 250.00,
                    icon: Icons.hotel_class,
                  ),
              
                  // 3em
                  FormWidget(
                    imageUrl:
                        'https://cdn.pixabay.com/photo/2020/10/02/09/01/tablets-5620566_960_720.jpg',
                    title: 'Medicament Pharmas',
                    normbre: 5.2,
                    price: 175.00,
                    icon: Icons.fiber_smart_record,
                  ),
              
                  // 4em
                  FormWidget(
                    imageUrl:
                        'https://cdn.pixabay.com/photo/2017/03/10/09/54/diabetes-2132317_960_720.jpg',
                    title: " Tenine D'enfant",
                    normbre: 4.1,
                    price: 650.00,
                    icon: Icons.dark_mode,
                  ),
              
                  // 5em
                  FormWidget(
                    imageUrl:
                        'https://cdn.pixabay.com/photo/2017/02/02/00/33/blood-pressure-monitor-2031766_960_720.jpg',
                    title: " Tensiomètre Omron",
                    normbre: 8.3,
                    price: 959.00,
                    icon: Icons.favorite,
                  ),
              
                  FormWidget(
                    imageUrl:
                        'https://cdn.pixabay.com/photo/2014/11/12/19/25/diabetes-528678_960_720.jpg',
                    title: " Glucomètre",
                    normbre: 7.3,
                    price: 700.00,
                    icon: Icons.star,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
