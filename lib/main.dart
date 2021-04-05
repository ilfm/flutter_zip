// App 만들기 공식화 한 것 =====================================================
// 무조건 넣고 시작하기
import 'package:flutter/material.dart';

// app의 시작점
void main() => runApp(MyApp()); // 무조건 argument로 widget으로 해야함

// 클래스명과 함수명
// 함수명은 처음은 소문자로 시작한다.
// 클래스명은 처음이 대문자로 시작한다.

// 커스텀 위젯 - 최상위 위젯 ,레이아웃
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialApp 실질적으로 다 감싸고 있는 위젯
    return MaterialApp(

        // app을 총칭하는 이름 그래서 text 사용 x
        title: 'First app',
        theme: ThemeData(
            // 색상 견본
            primarySwatch: Colors.blue),
        // 앱이 정상적으로 표시 될때 보여지는 경로
        home: MyHomePage());
  }
}

// 커스텀 위젯
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold → 발판을 만들어주다.
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: Center(
        // 모든 위젯을 세로로 배치
        child: Column(
          children: <Widget>[
            Text('Hello'),
            Text('Hello'),
            Text('Hello'),
          ], // []는 배열
        ),
      ),
    );
  }
}
