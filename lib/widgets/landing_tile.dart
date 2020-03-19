import 'package:flutter/material.dart';

class LandingTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      child: Text(
        "Something big is cooking! Stay tuned...",
        style: TextStyle(fontSize: 140),
      ),
    );
  }
}
