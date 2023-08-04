import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: <Widget>[
          Text(
            "Burger".toUpperCase(),
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 5,
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(2, 2),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
