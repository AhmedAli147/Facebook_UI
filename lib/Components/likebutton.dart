import 'package:flutter/material.dart';

Widget likeButton (){
  return Container(
    width: 25,
    height: 25,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.white), 
      shape: BoxShape.circle,
      color: Colors.blue,
      
    ),
    child: const Center(child: Icon(Icons.thumb_up, size: 12, color: Colors.white,))
    
  
  );
}