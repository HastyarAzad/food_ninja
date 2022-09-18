import 'package:flutter/material.dart';
import 'package:food_ninja/routing/routing_constants.dart';
import 'package:food_ninja/widgets/widgets.dart';

class OnBoradingFirstPage extends StatelessWidget {
  OnBoradingFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Image.asset("assets/images/img1.jpg"),
          ),
          SizedBox(height: 20),
          BoldText(text: "Find your Comfort \nFood here"),
          SizedBox(height: 20),
          NormalText(text: "Here You Can find a chef or dish for every \ntaste and color. Enjoy!"),
          SizedBox(height: 30),
          GreenButton(
            width: 150,
            text: "Next",
            onTab: () {
              Navigator.pushNamed(context, second_screen_route);
            },
          ),
        ],
      ),
    );
  }
}
