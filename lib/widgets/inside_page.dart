import 'package:flutter/material.dart';

class InsidePage extends StatelessWidget {
  const InsidePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      constraints: BoxConstraints(
        maxHeight: 200,
        maxWidth: 200,
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'For beach lovers',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.pinkAccent[400],
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Relax and get sun-kissed by the sea or in one of our numerous bar spots',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 120,
              constraints: BoxConstraints(
                maxHeight: 80,
                maxWidth: 160,
              ),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.pinkAccent[400]!, width: 2),
                  left: BorderSide(color: Colors.pinkAccent[400]!, width: 2),
                  right: BorderSide(color: Colors.pinkAccent[400]!, width: 2),
                  bottom: BorderSide(color: Colors.pinkAccent[400]!, width: 2),
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  'View Deals',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.pinkAccent[400],
                    fontSize: 16,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
