import 'package:flutter/material.dart';
import 'package:flutterstylehint/states/main_home.dart';
import 'package:get/get.dart';

class HelloScreen extends StatefulWidget {
  const HelloScreen({super.key, this.nickname});
  final String? nickname;

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
          padding: const EdgeInsets.only(
            top: 10,
            left: 15,
            right: 15,
            bottom: 10,
          ),
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello, ${widget.nickname}',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Follw users and see their latest stylings',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CardWidget(
                  avatar: 'https://via.placeholder.com/150',
                  name: 'Kawita',
                  ad: '@uqth_Kawita | 170cm',
                  img1: 'https://hips.hearstapps.com/hmg-prod/images/chanel-f23-063-64072376dc06e.jpg?resize=480:*',
                  img2: 'https://hips.hearstapps.com/hmg-prod/images/louis-vuitton-fw2324-look-44-6407253fe78fb.jpg?resize=480:*',
                  img3: 'https://hips.hearstapps.com/hmg-prod/images/zimmermann-f23-030-6407244437180.jpg?resize=480:*',
                ),
                SizedBox(
                  height: 20,
                ),
                CardWidget(
                  avatar: 'https://via.placeholder.com/150',
                  name: 'Kawita',
                  ad: '@uqth_Kawita | 170cm',
                  img1: 'https://hips.hearstapps.com/hmg-prod/images/chanel-f23-063-64072376dc06e.jpg?resize=480:*',
                  img2: 'https://hips.hearstapps.com/hmg-prod/images/louis-vuitton-fw2324-look-44-6407253fe78fb.jpg?resize=480:*',
                  img3: 'https://hips.hearstapps.com/hmg-prod/images/zimmermann-f23-030-6407244437180.jpg?resize=480:*',
                ),
                SizedBox(
                  height: 20,
                ),
                CardWidget(
                  avatar: 'https://via.placeholder.com/150',
                  name: 'Kawita',
                  ad: '@uqth_Kawita | 170cm',
                  img1: 'https://hips.hearstapps.com/hmg-prod/images/chanel-f23-063-64072376dc06e.jpg?resize=480:*',
                  img2: 'https://hips.hearstapps.com/hmg-prod/images/louis-vuitton-fw2324-look-44-6407253fe78fb.jpg?resize=480:*',
                  img3: 'https://hips.hearstapps.com/hmg-prod/images/zimmermann-f23-030-6407244437180.jpg?resize=480:*',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    this.avatar,
    this.name,
    this.ad,
    this.img1,
    this.img2,
    this.img3,
  });

  final String? avatar;
  final String? name;
  final String? ad;
  final String? img1;
  final String? img2;
  final String? img3;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20.0,
                  backgroundImage: NetworkImage(avatar.toString()),
                  backgroundColor: Colors.transparent,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name.toString()),
                    Text(
                      ad.toString(),
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Follow',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: Image.network(
                  img1.toString(),
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                flex: 1,
                child: Image.network(
                  img2.toString(),
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                flex: 1,
                child: Image.network(
                  img3.toString(),
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
