import 'package:flutter/material.dart';
import 'package:untitled/Onbording_screen/Onbording_Screen_page_1.dart';

import '../Home&Categories Screen/Home.dart';

class LaunchPage extends StatefulWidget {
  const LaunchPage({Key? key}) : super(key: key);

  @override
  State<LaunchPage> createState() => _LaunchPageState();
}

class _LaunchPageState extends State<LaunchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0C0D2E),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 160,
            ),
            const Text(
              'LATECH',
              style: TextStyle(
                  letterSpacing: 5,
                  fontFamily: "PTMono",
                  color: Color(0xFFFFFFFF),
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                        offset: Offset(0, 2),
                        blurRadius: 80,
                        color: Color(0xAAFFFFFF))
                  ]),
            ),
            const Text(
              'TECH MARKET',
              style: TextStyle(
                  letterSpacing: 6,
                  fontFamily: "SF Pro Text",
                  color: Color(0xFFFFFFFF),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  shadows: [
                    Shadow(
                        offset: Offset(0, 2),
                        blurRadius: 80,
                        color: Color(0xFFFFFFFF))
                  ]),
            ),
            const SizedBox(
              height: 57,
            ),
            Container(
              height: 216,
              width: 216,
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                  offset: Offset(-10, 0),
                  blurRadius: 200.0,
                  color: Color(0xFFFFFFFF),
                ),
                BoxShadow(
                    offset: Offset(35, 35),
                    blurRadius: 90.0,
                    color: Color(0xFF0C0D2E)),
              ]),
              constraints: const BoxConstraints(maxHeight: 216, maxWidth: 216),
              child: CircleAvatar(
                child: Image.asset('assest/ic_logo.png'),
                radius: 180,
                backgroundColor: const Color(0xFF0C0D2E),
              ),
            ),
            const SizedBox(
              height: 72,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnbordingPage1(),
                    ));
              },
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(4)),
                height: 53,
                width: 311,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xFFFFFFFF))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OnbordingPage1(),
                          ));
                    },
                    child: const Text(
                      'Let’s start',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: "SF Pro Text",
                        color: Color(0xFF0C0D2E),
                        fontWeight: FontWeight.w600,
                      ),
                    )),
              ),
            ),
            const SizedBox(
              height: 73,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ));
              },
              child: const Text(
                'Skip for now',
                style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    shadows: [
                      Shadow(
                          offset: Offset(0, 2),
                          blurRadius: 80,
                          color: Color(0xFFFFFFFF))
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
