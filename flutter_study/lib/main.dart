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
  State<MyHomePage> createState() => _MyHomePageState(); // State 객체를 생성할 때 사용되는 메서드
// _MyHomePageState는 MyHomePage 위젯의 상태를 관리하는 클래스임을 나타냄
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) { // setState가 불려지면 항상 실행되는 메소드
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              // alignment: Alignment.center,
              children: [
                // 순서가 중요함,, 밑에부터 깔아야됨
                Image.asset('assets/images/img_bg.png'), // width 늘리기
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset('assets/images/ic_logo.svg'),
                    const SizedBox(width: 20),
                    const Text('Photo',
                        style: TextStyle(fontSize: 48,color:Colors.black)
                    ),
                  ],
                )
              ],
            )




            //const SizedBox(height: 16), // cosnt를 지정하면 한번 실행 후 바뀌지 않으니까 성능 개선하는데 도움을 줄 수 있음
            //const Text('Discover', style: TextStyle(fontSize: 36)),
            //const SizedBox(height: 16),

            // const Text('what\'s new today', style: TextStyle(fontSize: 13)),
            // const SizedBox(height: 16),

/*            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                const Expanded(
                  child: SizedBox(height: 100),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                ),
              ],
            )*//*,
            Row(
               children: [
                 Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                  ),
                 const SizedBox(width: 16),
                 Container(
                   height:100,
                   width: 100,
                   color: Colors.red,
                 )
               ],
            ),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                const SizedBox(width: 16),
                Container(
                  height:100,
                  width: 100,
                  color: Colors.black,
                ),
                const SizedBox(width: 16),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),

              ],
            ),*/
          ],
        ),
      )
    );
  }

}