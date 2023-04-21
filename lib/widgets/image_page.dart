import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.white,
      constraints: const BoxConstraints(
        maxHeight: 200,
        maxWidth: 200,
      ),
      child: ClipPath(
        clipper: RightCornerBox(),
        child: Image.asset('assets/beachjpg.jpg', fit: BoxFit.fill,),
      )
    );
  }
}

class RightCornerBox extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(size.width/10, size.height/2);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
  
}
