import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 코드 스니펫으로 : 단축 : stl -> stless 선택
class MySplash extends StatelessWidget {
  const MySplash({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 오른쪽 상단에 debug 문구를 제거.
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.amberAccent
          ),
        ),
      ),
    );
  }
}
