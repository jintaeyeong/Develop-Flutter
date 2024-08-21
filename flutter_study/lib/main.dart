import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // 이 위젯은 App의 루트입니다.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter 공부앱', //앱이 백그라운드에 있을 때 앱 목록에 표시되는 이름
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'sample code'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() =>
      _MyHomePageState(); // State 객체를 생성할 때 사용되는 메서드
// _MyHomePageState는 MyHomePage 위젯의 상태를 관리하는 클래스임을 나타냄
}

class _MyHomePageState extends State<MyHomePage> {
  bool isTap = false;

  @override
  Widget build(BuildContext context) {
    // setState가 불려지면 항상 실행되는 메소드
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
            flex: 707,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // 순서가 중요함,, 밑에부터 깔아야됨
                Image.asset('assets/images/img_bg.png',
                    width: double.infinity, fit: BoxFit.fill), // width 늘리기
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/images/ic_logo.svg'),
                    const SizedBox(width: 20),
                    const Text('Photo',
                        style: TextStyle(fontSize: 48, color: Colors.black)),
                  ],
                )
              ],
            )),
        Flexible(
            flex: 105,
            child: Padding(
              // padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: GestureDetector(
                      //버튼에 기능을 붙여주는 것
                      onTap: () {
                        if (!isTap) {
                          isTap = true;
                        } else {
                          isTap = false;
                        }
                        print(isTap);
                      },
                      onLongPressUp: () {
                        print('로그인 버튼 길게 눌렀다가 뗌');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color: Colors.black, width: 2)),
                        alignment: Alignment.center,
                        child: const Text('LOG IN',
                            style:
                                TextStyle(fontSize: 13, color: Colors.black)),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Flexible(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      alignment: Alignment.center,
                      child: const Text('REGISTER',
                          style: TextStyle(fontSize: 13, color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ))
      ],
    ));
  }
}
