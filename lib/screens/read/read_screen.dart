// ignore_for_file: sized_box_for_whitespace

import 'package:driveq/constants.dart';
import 'package:driveq/widgets/large_text_widget.dart';
import 'package:driveq/widgets/normal_text_widget.dart';
import 'package:flutter/material.dart';

class ReadScreen extends StatefulWidget {
  const ReadScreen({Key? key}) : super(key: key);

  @override
  State<ReadScreen> createState() => _ReadScreenState();
}

class _ReadScreenState extends State<ReadScreen> {
  List images = [
    'bg1.png',
    'bg2.png',
    'bg1.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.indigoAccent,
              backgroundBlendMode: BlendMode.colorBurn,
              image: DecorationImage(
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter,
                image: AssetImage(
                  'assets/images/${images[index]}',
                ),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(
                top: 100,
                left: 20,
                right: 20,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LargeText(
                        text: 'Rules & Regulations',
                        size: 30,
                      ),
                      NormalText(
                        text: 'Lorem Ipsum',
                        size: 28,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 250,
                        child: NormalText(
                          text: kDummyText,
                          color: kBlackColor,
                          size: 16,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
