// import 'dart:ffi';

import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  String imageUrl;
  String title;
  double normbre;
  double price;
  IconData icon;

   FormWidget({super.key, required this.imageUrl, required this.title, required this.normbre, required this.price, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.all(8),
          
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Column(
            children: [
              Container(
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                  image: DecorationImage(image: NetworkImage(imageUrl),
                  fit: BoxFit.cover
                  ),
                  color: Colors.amberAccent,
                ),
              ),

              Container(
                margin: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                        Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
                     Row(
                      children: [
                         Icon(icon,color: Colors.amber,),
                         Text('${normbre}'),
                      ],
                     ),
                      ],
                    ),

                    Text('\$${price}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  ],
                ),
                
              )

            ],
          ),
        );
  }
}


