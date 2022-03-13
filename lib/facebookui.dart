import 'package:flutter/material.dart';

class FaceBookui extends StatefulWidget {
  const FaceBookui({Key? key}) : super(key: key);

  @override
  State<FaceBookui> createState() => _FaceBookuiState();
}

class _FaceBookuiState extends State<FaceBookui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Container(
             padding: EdgeInsets.only(top: 50, right: 20, left: 20, bottom: 10),
            height: 130,
            child: Row(
              children: [Expanded(child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[200],
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none

                  ),
                ),
              ))],
            ),
          )
        ],
      ),
    );
  }
}
