import 'package:flutter/material.dart';

class CustomTextSpan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'NUMERICAL',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontFamily: 'Timer',
          fontWeight: FontWeight.bold,
        ),
        children: <InlineSpan>[
          TextSpan(
            text: ' FACTS',
            style: TextStyle(
              color: Colors.greenAccent,
            ),
          ),
        ],
      ),
    );
  }
}
