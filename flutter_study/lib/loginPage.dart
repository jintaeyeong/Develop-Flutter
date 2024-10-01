import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top),
          SvgPicture.asset(
            'assets/images/ic_back.svg',
            width: 20,
          ),
          const SizedBox(height: 32),
          const Text('Log in',
              style: TextStyle(fontSize: 48, color: Colors.black)),
          const SizedBox(height: 32),
          Container(
            height: 52,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2)),
            alignment: Alignment.center,
            child: TextField(),
          ),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: Container(
              height: 52,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2)),
              alignment: Alignment.center,
              child: TextField(),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            height: 52,
            decoration: BoxDecoration(
              color: Colors.black, // 삼항 연산자 추가
              borderRadius: BorderRadius.circular(6),
            ),
            alignment: Alignment.center,
            child: const Text('LOG IN',
                style: TextStyle(fontSize: 13, color: Colors.white)),
          ),
        ],
      ),
    ));
  }
}
