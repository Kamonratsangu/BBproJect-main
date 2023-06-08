import 'package:flutter/material.dart';
import 'package:flutterstylehint/states/loginpage.dart';
import 'package:flutterstylehint/widget/widget_button.dart';
import 'package:flutterstylehint/widget/widget_image.dart';
import 'package:flutterstylehint/widget/widget_text.dart';
import 'package:get/get.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 64),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const WidgetImage(
            path: 'images/shirtsearch.png',
            size: 90,
          ),
          WidgetText(
            data: 'Log in and enjoy all features.',
            textStyle: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Colors.black),
          ),
          Container(
            width: double.infinity,
            child: WidgetButton(
              label: 'Log in or Sign Up',
              pressFunc: () {
                Get.offAll(const LoginPage());
              },
            ),
          )
        ],
      ),
    );
  }
}