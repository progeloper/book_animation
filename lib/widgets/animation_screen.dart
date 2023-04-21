import 'dart:math';

import 'package:book_animation/widgets/cover_page.dart';
import 'package:book_animation/widgets/image_page.dart';
import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  final AnimationController controller;
  AnimationScreen({Key? key, required this.controller}) : super(key: key);

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  late Animation _animation;


  Widget getScreen(){
    if(_animation.value < 0.5){
      return const CoverPage(text: 'From ₦25,000', title: 'Oniru Beach');
    }else{
      return const ImagePage();
    }
  }

  @override
  void initState() {
    super.initState();

    _animation = Tween(begin: 0.0, end: 1.0).animate(widget.controller)..addListener(() {setState(() {

    });});
  }



  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.rotationY(pi * _animation.value),
      child: getScreen(),
    );
  }
}
