import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CustomIconButton extends StatelessWidget {
  final String imageUrl;
  final String? text;
  final double width;
  final double height;
  final bool isVertical;
  final VoidCallback onTab;

  const CustomIconButton({Key? key, required this.imageUrl, this.text, required this.width, required this.onTab, this.height = 50, this.isVertical = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.only(top: 4, left: 0, right: 16, bottom: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(color: Colors.black12, blurRadius: 5),
          ],
        ),
        child: isVertical
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(imageUrl),
                  text == null
                      ? SizedBox.shrink()
                      : Padding(
                          padding: const EdgeInsets.only(left: 8.0,top: 10),
                          child: Text(
                            "$text",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(imageUrl),
                  text == null
                      ? SizedBox.shrink()
                      : Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "$text",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                ],
              ),
      ),
    );
  }
}
