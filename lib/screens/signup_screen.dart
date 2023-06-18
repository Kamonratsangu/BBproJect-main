import 'package:flutter/material.dart';
import 'package:flutterstylehint/screens/hello_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final nicknameController = TextEditingController();
  String dropdownvalue = 'Male';
  bool isChecked = false;

  // List of items in our dropdown menu
  var items = [
    'Male',
    'Female',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          //replace with our own icon data.
        ),
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(
            top: 10,
            left: 15,
            right: 15,
            bottom: 10,
          ),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('User ID'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '※',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.black12,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '• A User ID can only contain alphanumeric characters with underscores, hyphen, and period.',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '• You cannot use the same ID with others.',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('Nickname'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '※',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  TextField(
                    controller: nicknameController,
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.black12,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text('Gender'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '※',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DropdownButton(
                    isExpanded: true,
                    value: dropdownvalue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                left: 0,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                          Flexible(
                            child: Text(
                              'I am 15 years old over and agree to Terms of Use and Privacy Policy',
                            ),
                          ),
                          // Expanded(
                          //   child: Text(
                          //     'Terms of Use',
                          //     style: TextStyle(
                          //       decoration: TextDecoration.underline,
                          //     ),
                          //   ),
                          // ),
                          // Expanded(child: Text(' and ')),
                          // Expanded(
                          //   child: Text(
                          //     'Privacy Policy',
                          //     style: TextStyle(
                          //       decoration: TextDecoration.underline,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[300],
                          minimumSize: const Size.fromHeight(50),
                          shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HelloScreen(
                                nickname: nicknameController.text,
                              ),
                            ),
                          );
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
