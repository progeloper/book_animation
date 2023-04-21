import 'package:flutter/material.dart';

class CoverPage extends StatelessWidget {
  final String title;
  final String text;
  const CoverPage({Key? key, required this.text, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      constraints: const BoxConstraints(
        maxWidth: 200,
        maxHeight: 200,
      ),
      decoration: BoxDecoration(
        color: Colors.pinkAccent[400],
        boxShadow: [
          BoxShadow(
            color: Colors.grey[850]!,
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 150,
            width: 150,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.beach_access_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    text,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
          ),
          ClipPath(
            clipper: BottomTriangle(),
            child: Container(
              height: 50,
              color: Colors.white,
              child: Center(
                child: Text(
                  'View me',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.pinkAccent[400],
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomTriangle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width / 2 - 10, 0);
    path.lineTo(size.width / 2, 10);
    path.lineTo(size.width / 2 + 10, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
