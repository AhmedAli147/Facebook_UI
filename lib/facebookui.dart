import 'package:facebookui/Components/customtopbar.dart';
import 'package:facebookui/Components/horizontal_slider.dart';
import 'package:facebookui/Components/vertical_slider.dart';
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
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: const [
                        Text(
                          "Stories",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        ),
                        Text("See Archive")
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 180,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          horizontalSlider(
                              storyImage: 'assets/story/s1.jpg',
                              userImage: 'assets/images/p1.jpg',
                              userName: "Ben John"),
                          horizontalSlider(
                              storyImage: "assets/story/s2.jpg",
                              userImage: 'assets/images/p2.jpg',
                              userName: 'Alex'),
                          horizontalSlider(
                              storyImage: "assets/story/s3.jpg",
                              userImage: 'assets/images/p3.jpg',
                              userName: 'Usama'),
                          horizontalSlider(
                              storyImage: "assets/story/s4.jpg",
                              userImage: 'assets/images/p4.jpg',
                              userName: 'Jordan'),
                          horizontalSlider(
                              storyImage: "assets/story/s5.jpg",
                              userImage: 'assets/images/p5.jpg',
                              userName: 'Ibrahim'),
                          horizontalSlider(
                              storyImage: "assets/story/s6.jpg",
                              userImage: 'assets/images/p6.jpg',
                              userName: 'Atif'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    verticalSlider(
                      userName: "Julia Ben",
                      userImage: 'assets/images/p8.jpg',
                      feedTime: '1 hr ago',
                      feedText: 'All the Lorem Ipsum generator on the Internet tend to repeat predefined.',
                      feedImage: 'assets/story/s7.jpg',
                    ),
                     verticalSlider(
                      userName: "Aiony Haust",
                      userImage: 'assets/images/p11.jpg',
                      feedTime: '2 min ago',
                      feedText: 'All the Lorem Ipsum generator on the Internet tend to repeat predefined. This suppose to be great.',
                      feedImage: 'assets/story/s8.jpg',
                    ),
                     verticalSlider(
                      userName: "Harry",
                      userImage: 'assets/images/p12.jpg',
                      feedTime: '1 hr ago',
                      feedText: 'All the Lorem Ipsum generator on the Internet tend to repeat predefined.',
                      feedImage: 'assets/story/s10.jpg',
                    ),
                     verticalSlider(
                      userName: "Julia Ben",
                      userImage: 'assets/images/p8.jpg',
                      feedTime: '1 hr ago',
                      feedText: 'All the Lorem Ipsum generator on the Internet tend to repeat predefined.',
                      feedImage: 'assets/story/s7.jpg',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
