import 'package:flutter/material.dart';
import 'package:food_ninja/routing/routing_constants.dart';
import 'package:food_ninja/widgets/widgets.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Pattern.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Image.asset("assets/images/food_ninja.jpg"),
                ),
                SizedBox(height: 65),
                BoldText(text: "Login To Your Account"),
                SizedBox(height: 40),
                Column(
                  children: [
                    CustomTextField(
                      hintText: "email",
                      // iconData: Icons.person,
                    ),
                    SizedBox(height: 15),
                    CustomTextField(
                      hintText: "password",
                      // iconData: Icons.email,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Or Continue With",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      imageUrl: "assets/icons/facebook.png",
                      text: "Facebook",
                      width: 150,
                      onTab: () {
                        print("facebook");
                      },
                    ),
                    SizedBox(width: 20),
                    CustomIconButton(
                      imageUrl: "assets/icons/google.png",
                      text: "Google",
                      width: 150,
                      onTab: () {
                        print("google");
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, forgot_password);
                  },
                  child: Text(
                    "Forgot Your Password?",
                    style: TextStyle(
                      color: Color(0xff53E88B),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                GreenButton(
                    width: 150.0,
                    onTab: () {
                      Navigator.pushNamed(context, home);
                    },
                    text: "Login"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
