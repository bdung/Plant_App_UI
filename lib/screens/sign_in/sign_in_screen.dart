import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plant_app_ui/constants.dart';
import 'package:plant_app_ui/screens/detail_item/components/body.dart';
import 'package:plant_app_ui/screens/homepage/home_screen.dart';
import 'package:plant_app_ui/screens/sign_in/components/icon_social_card.dart';
import 'package:plant_app_ui/screens/sign_up/sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.2,
              ),
              const Text(
                "Sign In",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.02,
              ),
              Text(
                "Hi! Welcome back, you're been missed",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: kTextColor.withOpacity(0.7)),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.1,
              ),
              const TextField(
                scrollPadding: EdgeInsets.all(kDefaultPadding / 4),
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      gapPadding: 2.0),
                  labelText: 'Email',
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.02,
              ),
              const TextField(
                obscureText: true,
                scrollPadding: EdgeInsets.all(kDefaultPadding / 4),
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.visibility_off),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      gapPadding: 2.0),
                  labelText: 'Password',
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              const Align(
                alignment: Alignment.topRight,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline),
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              SizedBox(
                width: size.width,
                height: MediaQuery.sizeOf(context).height * 0.07,
                child: ElevatedButton(
                    child: Text("Sign In"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    )),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              const Text("Or Sign in with "),
              SizedBox(
                height: size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const IconSignInCard(icon: FontAwesomeIcons.apple),
                  SizedBox(
                    width: size.width * 0.04,
                  ),
                  const IconSignInCard(icon: FontAwesomeIcons.google),
                  SizedBox(
                    width: size.width * 0.04,
                  ),
                  const IconSignInCard(icon: FontAwesomeIcons.facebook),
                ],
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have account? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()));
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                          color: kPrimaryColor,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
