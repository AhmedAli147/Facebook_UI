import 'package:flutter/material.dart';

Widget horizontalSlider({storyImage, userImage, userName}) {
  return AspectRatio(
    aspectRatio: 1.5 / 2,
    child: Container(
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage(storyImage), fit: BoxFit.cover)),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(colors: [
              Colors.black.withOpacity(.5),
              Colors.black.withOpacity(.1),
            ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
                image: DecorationImage(
                  image: AssetImage(userImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(userName, style: TextStyle(color: Colors.white),)
          ],
        ),
      ),
    ),
  );
}
