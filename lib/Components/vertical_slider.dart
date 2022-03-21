import 'package:facebookui/Components/commentsbutton.dart';
import 'package:facebookui/Components/likebutton.dart';
import 'package:facebookui/Components/likereactbutton.dart';
import 'package:facebookui/Components/lovebutton.dart';
import 'package:facebookui/Components/sharebutton.dart';
import 'package:flutter/material.dart';

Widget verticalSlider({userName, userImage, feedTime, feedText, feedImage}) {
  return Container(
    margin: const EdgeInsets.only(bottom: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(userImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: TextStyle(
                          color: Colors.grey.shade900,
                          letterSpacing: 1,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      feedTime,
                      style: const TextStyle(color: Colors.grey, fontSize: 15),
                    )
                  ],
                )
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz,
                color: Colors.grey,
                size: 30,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Text(
          feedText,
          style: TextStyle(
              color: Colors.grey.shade800,
              fontSize: 15,
              height: 1.5,
              letterSpacing: .6),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(feedImage),
                fit: BoxFit.cover,
              )),
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween ,
          children: [
            Row(
              children: [
                likeButton(),
                Transform.translate(offset: const Offset(-5, 0), child: loveButton()),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '2.5K',
                  style: TextStyle(fontSize: 15, color: Colors.grey.shade800),
                ),
               
                
              ],
            ),
             Text(
                  '500 Comments',
                  style: TextStyle(fontSize: 15, color: Colors.grey.shade800),
                ),
          ],
        ),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            likeReactButton(isActive: true),
            commentstButton(),
            sharetButton(),

          ],
        )
      ],
    ),
  );
}
