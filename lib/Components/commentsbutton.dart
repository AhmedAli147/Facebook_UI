import 'package:flutter/material.dart';

Widget commentstButton() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade200),
      borderRadius: BorderRadius.circular(50),
    ),
    child: Row(
      children: const [
        Icon(
          Icons.chat_rounded,
          color: Colors.grey,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          'Comments',
          style: TextStyle(
            color: Colors.grey,
          ),
        )
      ],
    ),
  );
}
