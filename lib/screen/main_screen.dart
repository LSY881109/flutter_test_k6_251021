import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyMainScreen extends StatelessWidget {
  const MyMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('메인화면'),),
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(child: FlutterLogo(size:100),),
                const SizedBox(height: 16,),
                ElevatedButton(
                    onPressed: () {  },
                    child: const Text('로그인'))
              ],
            )),
      ),
    );
  }
}
