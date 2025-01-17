import 'package:echo_vision/components/camera.dart';
import 'package:echo_vision/screens/home.dart';
import 'package:flutter/material.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF131433),
        body: Stack(
          children: [
            const CameraApp(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  height: 85,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFF131433),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: ListTile(
                    trailing: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      child: Image(
                        image: AssetImage("assets/images/setting.png"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.all(25),
                    child: Image(
                      image: AssetImage('assets/images/Frame 9.png'),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
