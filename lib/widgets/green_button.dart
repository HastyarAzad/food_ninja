import 'package:flutter/material.dart';

class GreenButton extends StatelessWidget {
  final double width;
  final String text;

  final VoidCallback onTab;
  const GreenButton({Key? key, required this.width, required this.text, required this.onTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        height: 57,
        width: width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff53e88b),
              Color(0xff15be77),
            ]),
            borderRadius: BorderRadius.circular(10)),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: onTab,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
