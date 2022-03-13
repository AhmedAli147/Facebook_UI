import 'package:facebookui/Components/customtopbar.dart';
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
          customTopbar(),
          Expanded(
              child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(padding: EdgeInsets.all(20)),
          ))
        ],
      ),
    );
  }
}
