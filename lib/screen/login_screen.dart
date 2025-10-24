import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyLoginScreen extends StatelessWidget {
  const MyLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('로그인 화면'),
        ),
      ),
    );
  }
}
