import 'package:flutter/material.dart';
import 'package:food_ninja/app_screens/screens.dart';
import 'package:food_ninja/intro_screens/intro_screens.dart';

class NavScreen extends StatelessWidget {
  const NavScreen({Key? key}) : super(key: key);

  final bool _isSignedid = false;

  @override
  Widget build(BuildContext context) {
    return _isSignedid ? Home() : OnBoradingFirstPage() ;
  }
}
