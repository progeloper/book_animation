import 'package:book_animation/widgets/animation_screen.dart';
import 'package:book_animation/widgets/cover_page.dart';
import 'package:book_animation/widgets/inside_page.dart';
import 'package:flutter/material.dart';

class TripCard extends StatefulWidget {
  const TripCard({Key? key}) : super(key: key);

  @override
  State<TripCard> createState() => _TripCardState();
}

class _TripCardState extends State<TripCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;
  bool isOpen = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 500,
      ),
    );
    _animation = Tween<Offset>(begin: const Offset(0, 0), end: const Offset(100, 0)).animate(CurvedAnimation(parent: _controller, curve: Curves.linear))..addListener(() {
      setState(() {
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          if(!isOpen){
            _controller.forward();
            isOpen = true;
            return;
          } else{
            _controller.reverse();
            isOpen = false;
          }
        },
        child: Transform.translate(
          offset: _animation.value,
          child: Stack(
            children: [
              InsidePage(),
              AnimationScreen(controller: _controller),
            ],
          ),
        ),
      ),
    );
  }
}
