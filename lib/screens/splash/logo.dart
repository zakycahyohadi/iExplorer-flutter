import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'iExplorer',
      style: TextStyle(
        fontFamily: "Hiatus",
        fontWeight: FontWeight.w700,
        fontSize: 105,
        color: Colors.white,
      ),
    );
  }
}