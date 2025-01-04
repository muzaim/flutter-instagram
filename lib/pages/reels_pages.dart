import 'package:belajar_instagram/pages/reels/reels_1.dart';
import 'package:belajar_instagram/pages/reels/reels_2.dart';
import 'package:belajar_instagram/pages/reels/reels_3.dart';
import 'package:flutter/material.dart';

class ReelsPages extends StatelessWidget {
  final _controller = PageController();
  ReelsPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            'Reels',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Icon(Icons.add_a_photo_outlined),
            )
          ],
        ),
        body: PageView(
          controller: _controller,
          scrollDirection: Axis.vertical,
          scrollBehavior: ScrollBehavior(),
          children: [
            Reels1(),
            Reels2(),
            Reels3(),
          ],
        ));
  }
}
