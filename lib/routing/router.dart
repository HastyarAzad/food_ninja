import 'package:flutter/material.dart';
import 'package:food_ninja/app_screens/screens.dart';
import 'package:food_ninja/intro_screens/intro_screens.dart';
import 'package:food_ninja/routing/routing_constants.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case nav_screen_route:
      return MaterialPageRoute(builder: (context) => NavScreen());
    case second_screen_route:
      return MaterialPageRoute(builder: (context) => OnBoardingSecondPage());
    case home:
      return MaterialPageRoute(builder: (context) => Home());
    case sign_up:
      // return PageRouteBuilder(
      //     transitionDuration: Duration(seconds: 6),
      //     reverseTransitionDuration: Duration(seconds: 6),
      //     pageBuilder: (context, animation, aasdf) {
      //       return SignUp();
      //     });
    return MaterialPageRoute(builder: (context) => SignUp());
    case log_in:
      return MaterialPageRoute(builder: (context) => LogIn());
    case forgot_password:
      return MaterialPageRoute(builder: (context) => ForgotPassword());

    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text("error"),
          ),
        ),
      );
  }
}
