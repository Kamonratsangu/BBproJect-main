import 'package:flutter/material.dart';

class FormApp extends StatefulWidget {
  const FormApp({Key? key}) : super(key: key);

  @override
  _FormAppState createState() => _FormAppState();
}

class _FormAppState extends State<FormApp> {
  @override
final GlobalKey<FormState> _key = GlobalKey<FormState>();


  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Form Example')),
        body: Form(
          key: _key,
          child: TextFormField(
            decoration: const InputDecoration(
              labelText: 'Name',
            ), // InputDecoration
          ), //TextFormField
        ), // Form
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.save),
          onPressed: () {},
          //  print("form submitted.");
        ),
      ),
    );
  }
}