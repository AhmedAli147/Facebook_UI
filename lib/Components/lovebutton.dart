import 'package:flutter/material.dart';

Widget loveButton (){
  return Container(
    width: 25,
    height: 25,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.white), 
      shape: BoxShape.circle,
      color: Colors.red,
      
    ),
    child: const Center(child: Icon(Icons.favorite, size: 12, color: Colors.white,))
    
  
  );
}