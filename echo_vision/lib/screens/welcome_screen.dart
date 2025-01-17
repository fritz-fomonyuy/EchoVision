import 'package:echo_vision/components/BaseScreen.dart';
import 'package:echo_vision/screens/RegisterScreens/register_screen1.dart';
import 'package:flutter/material.dart';

import '../components/constants.dart';
import '../components/text_button_style.dart';
import 'home.dart';
import 'LoginScreens/login_screen1.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('assets/images/Frame 6.png'),
                      scale: 1.0),
                ),
              ),
              const SizedBox(
                height: 250,
              ),
              Text(
                'Welcome to',
                style: kHeadingStyle,
              ),
              Text(
                "Echo Vision",
                style: kSubHeadingStyle,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Android Application which offers services to ",
                style: kNormalStyle,
              ),
              Text("help people who are visually impaired.",
                  style: kNormalStyle),
              SizedBox(
                height: 160,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextButtonStyle(
                    text: 'Register',
                    color: kPrimaryColor,
                    Firebase_Func: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Register1(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButtonStyle(
                    text: 'Login',
                    color: Color(0XFFafbbef),
                    Firebase_Func: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login1(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
