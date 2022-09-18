import 'package:flutter/material.dart';

class BoldText extends StatelessWidget {
  final String text;
  final bool isCentered;

  const BoldText({Key? key, required this.text, this.isCentered = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: isCentered ? TextAlign.center : TextAlign.left,
      style: TextStyle(
        overflow: TextOverflow.clip,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class NormalText extends StatelessWidget {
  final String text;
  final bool isCentered;
  const NormalText({Key? key, required this.text, this.isCentered = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: isCentered ? TextAlign.center : TextAlign.left,
      style: TextStyle(fontSize: 12, height: 2),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final IconData? iconData;
  final String hintText;

  const CustomTextField({
    Key? key,
    this.iconData,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.2,
      height: 50,
      padding: EdgeInsets.only(top: 4, left: 0, right: 16, bottom: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
        boxShadow: const [
          // BoxShadow(color: Colors.black12, blurRadius: 5),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.red,
          border: InputBorder.none,
          icon: iconData == null
              ? SizedBox.shrink()
              : Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Icon(
                    iconData,
                    color: Color(0xff53E88B),
                  ),
                ),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[400]),
        ),
      ),
    );
  }
}
