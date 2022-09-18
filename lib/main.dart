import 'package:flutter/material.dart';
import 'package:food_ninja/routing/routing_constants.dart';
import 'routing/router.dart' as router;


// cd D:\flutter_share_screen\platform-tools
// .\scrcpy.exe -m 1920

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: nav_screen_route,
      onGenerateRoute: router.generateRoute,
      title: 'food ninja',
      debugShowCheckedModeBanner: false,
    );
  }
}
