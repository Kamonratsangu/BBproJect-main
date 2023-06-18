import 'package:flutter/material.dart';
import 'package:flutterstylehint/screens/signup_screen.dart';
import 'package:flutterstylehint/states/main_home.dart';
import 'package:flutterstylehint/widget/apple_button.dart';
import 'package:flutterstylehint/widget/instagram_button.dart';
import 'package:flutterstylehint/widget/uniqlo_button.dart';
import 'package:flutterstylehint/widget/widget_text.dart';
import 'package:get/get.dart';
// import 'package:loginstyle/apple_button.dart';
// import 'package:loginstyle/instagram_button.dart';
// import 'package:loginstyle/uniqlo_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeadImage(),
            _buildHeadDetails(),
            // AppleButton(onTap: () {}),
            // SizedBox(
            //   height: 15,
            // ),
            InstagramButton(onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignupScreen(),
                ),
              );
            }),
            SizedBox(
              height: 15,
            ),
            UniqloButton(onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignupScreen(),
                ),
              );
            }),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                Get.offAll(const MainHome());
              },
              child: const Text(
                'Not Now',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            // WidgetText(data: 'Current Region: Thailand'),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[50],
              ),
              child: Text('Current Region: Thailand'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeadImage() {
    return Container(
      width: 440,
      height: 440,
      child: Image.asset(
        'images/loginstylehint.jpg',
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildHeadDetails() {
    return Padding(
      padding: EdgeInsets.all(25.0),
      child: Row(
        children: [
          Text(
            'Welcome',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  // Widget _igButton() {
  // return Container(
  //   decoration: BoxDecoration(
  //       border: Border.all(
  //           color: Colors.black, width: BorderSide.strokeAlignCenter),
  //       color: Colors.white),
  //   padding: EdgeInsets.all(8),
  //   child: Text('Sign in with Apple'),
  // );
  // return Container(
  //   child: OutlinedButton(
  //     child: Text("Sign in with Apple"),
  //     onPressed: () {},
  //     style: OutlinedButton.styleFrom(
  //       foregroundColor: Colors.black, backgroundColor: Colors.white, padding: EdgeInsets.all(10.0),
  //       fixedSize: Size(350, 50),
  //       textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
  //       side: BorderSide(color: Colors.black, width: 1),
  //     ),
  //   ),
  // );
}
