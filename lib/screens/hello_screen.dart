import 'package:flutter/material.dart';
import 'package:flutterstylehint/states/main_home.dart';
import 'package:get/get.dart';

class HelloScreen extends StatefulWidget {
  const HelloScreen({super.key});

  @override
  State<HelloScreen> createState() => _HelloScreenState();
}

class _HelloScreenState extends State<HelloScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            child: Text('Next'),
            onPressed: () {
                Get.offAll(const MainHome());
              },
            //   print('Pressed');
            // },
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}
