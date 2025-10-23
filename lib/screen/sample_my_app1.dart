import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 위젯을 분리 해보기.
// 1) 스테이트리스 위젯, -> 정적화면 예시) 나무 간판.
// 2) 상태를 관리하는 , 스테이트 풀 위젯. -> 동적 화면, 상태에 따라서 화면표기.
// 예시) 점수가 표시되는 간판.


class MyApp extends StatelessWidget {

  // SnackBar를 보여주는 함수
  void _showSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: Text('스낵바가 표시되었습니다!'), // 스낵바 안에 표시할 텍스트

      duration: Duration(seconds: 3), // 스낵바가 화면에 표시되는 시간

      backgroundColor: Colors.indigo, // 배경색 지정

      behavior: SnackBarBehavior.fixed, // fixed 또는 floating 설정 가능

      elevation: 6.0, // 그림자 깊이 (부유 느낌)

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0), // 모서리 둥글게
      ),

      action: SnackBarAction(
        label: '클릭', // 버튼 텍스트
        textColor: Colors.yellow, // 텍스트 색상

        onPressed: () {
          // 클릭 이벤트 처리: 예를 들어 로그 출력
          print('SnackBar의 클릭 액션 실행됨');
        },
      ),
    );

    // ScaffoldMessenger를 통해 현재 context에 SnackBar 표시
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body : SizedBox(
              width: double.infinity,
              child: Column ( // Flex 세로방향으로 나란히 배치 비슷
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('오늘 점심 뭐 먹지'),
                  Text(
                    // "헬로우 busanit 501, 플러터 앱 화면 작업 시작."
                    // 작성하고 싶은 글
                      ' 헬로우 busanit 501, 오늘점심뭐 먹지', // 글자에 스타일 적용
                      style: TextStyle(
// 글자 크기
                        fontSize: 16.0,
// 글자 굵기
                        fontWeight: FontWeight.w700,
// 글자 색상
                        color: Colors.blue,
                      )
                  ),
                  Text('오늘 점심 뭐 먹지? 라면+밥'),
                  TextButton(
                    // 클릭 시 실행할 함수
                    onPressed: () {},
                    // 스타일 지정
                    style: TextButton.styleFrom(
                      // 주색상 지정
                      foregroundColor: Colors.red,
                    ),
                    // 버튼에 넣을 위젯
                    child: Text('텍스트 버튼'),
                  ),
                  OutlinedButton(
                    // 클릭 시 실행할 함수
                    onPressed: () {},
                    // 버튼 스타일 지정
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.red,
                    ),
                    // 버튼에 넣을 위젯
                    child: Text('아웃라인드 버튼'),
                  ),

// ElevatedButton 예제
                  ElevatedButton(
                    // 클릭 시 실행할 함수
                    onPressed: () {},
                    // 버튼 스타일 지정
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    // 버튼에 넣을 위젯
                    child: Text('엘리베이티드 버튼'),
                  ),
                  Center(
                    child: Builder(
                      builder: (context) => TextButton(
                        onPressed: () {
                          // 방법1
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('스낵바가 표시되었습니다!')),
                          );
                          // 방법2
                          // _showSnackBar(context);
                        },
                        child: const Text('스낵바 보기 방법1'),
                      ),
                    ),
                  ),
                  Center(
                    child: Builder(
                      builder: (context) =>   ElevatedButton(
                        // 클릭 시 실행할 함수
                        onPressed: () {
                          // 방법2
                          _showSnackBar(context);
                        },
                        // 버튼 스타일 지정
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        // 버튼에 넣을 위젯
                        child: const Text('스낵바 보기 방법2'),
                      ),
                    ),
                  ),
                ],
              )
          )
      ),
    );
  }
}