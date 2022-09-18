import 'package:flutter/material.dart';
import 'package:food_ninja/routing/routing_constants.dart';
import 'package:food_ninja/widgets/widgets.dart';

class OnBoardingSecondPage extends StatelessWidget {
  const OnBoardingSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Image.asset("assets/images/img2.jpg"),
          ),
          SizedBox(height: 67),
          BoldText(text: "Food Ninja is Where Your \nComfort Food Lives"),
          SizedBox(height: 20),
          NormalText(
              text: "Enjoy a fast and smooth food delivery at \nyour doorstep"),
          SizedBox(height: 30),
          GreenButton(
            width: 150,
            text: "Next",
            onTab: () {
              Navigator.pushNamed(context, sign_up);
            },
          ),
        ],
      ),
    );
  }
}
