import 'package:flutter/material.dart';
import 'package:food_ninja/intro_screens/intro_screens.dart';
import 'package:food_ninja/routing/routing_constants.dart';
import 'package:food_ninja/widgets/widgets.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool keepMeSignedIn = true;
  bool notifyMeWithEmails = false;

  // ignore: non_constant_identifier_names
  Padding create_checkbox(String text, bool isChecked) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, top: 0.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Checkbox(
            value: isChecked,
            shape: CircleBorder(),
            activeColor: Color(0xff53E88B),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          Text(
            text,
            style: TextStyle(color: Colors.grey[700], fontSize: 12),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Pattern.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Material(
              color: Colors.transparent,
              child: Ink(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Image.asset("assets/images/food_ninja.jpg"),
                    ),
                    SizedBox(height: 65),
                    BoldText(text: "Sign Up For Free"),
                    SizedBox(height: 40),
                    Column(
                      children: [
                        CustomTextField(
                          hintText: "username",
                          iconData: Icons.person,
                        ),
                        SizedBox(height: 15),
                        CustomTextField(
                          hintText: "email",
                          iconData: Icons.email,
                        ),
                        SizedBox(height: 15),
                        CustomTextField(
                          hintText: "Password",
                          iconData: Icons.lock,
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          keepMeSignedIn = !keepMeSignedIn;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 0.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Checkbox(
                              value: keepMeSignedIn,
                              shape: CircleBorder(),
                              activeColor: Color(0xff53E88B),
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              onChanged: (value) {
                                setState(() {
                                  keepMeSignedIn = value!;
                                });
                              },
                            ),
                            Text(
                              "Keep Me Signed in",
                              style: TextStyle(color: Colors.grey[700], fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          notifyMeWithEmails = !notifyMeWithEmails;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 0.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Checkbox(
                              value: notifyMeWithEmails,
                              shape: CircleBorder(),
                              activeColor: Color(0xff53E88B),
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              onChanged: (value) {
                                setState(() {
                                  notifyMeWithEmails = value!;
                                });
                              },
                            ),
                            Text(
                              "Email Me About Special Pricing",
                              style: TextStyle(color: Colors.grey[700], fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GreenButton(
                      text: "Create Account",
                      width: 175,
                      onTab: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpProcess()),
                        );
                      },
                    ),
                    SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, log_in);
                      },
                      child: Text(
                        "already have an account?",
                        style: TextStyle(
                          color: Color(0xff53E88B),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
