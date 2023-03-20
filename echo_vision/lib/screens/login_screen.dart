import 'package:echo_vision/components/BaseScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BaseScreen(title: "Tell us your full name"),
      ),
    );
  }
}
