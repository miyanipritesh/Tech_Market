import 'package:flutter/material.dart';
import 'package:untitled/Home&Categories%20Screen/Home.dart';
import 'package:untitled/Onbording_screen/Create_account.dart';

class OnbordingPage1 extends StatefulWidget {
  const OnbordingPage1({Key? key}) : super(key: key);

  @override
  State<OnbordingPage1> createState() => _OnbordingPage1State();
}

class _OnbordingPage1State extends State<OnbordingPage1> {
  List contain = [
    Screen(img: 'assest/ic_Screen_1.png', title: 'The best tech market'),
    Screen(img: 'assest/ic_Screen_2.png', title: 'A lot of exclusives'),
    Screen(img: 'assest/ic_Screen_3.png', title: 'Sales all the time'),
    Screen(img: 'assest/Screen_4.png', title: 'Sales all the time'),
  ];
  PageController _controlller = PageController();
  int currentindex = 0;
  @override
  void initState() {
    _controlller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controlller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF0001FC),
        body: Column(
          children: [
            Flexible(
              flex: 4,
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    currentindex = value;
                  });
                },
                controller: _controlller,
                children: [
                  //First page
                  ListView(
                    children: [
                      const SizedBox(
                        height: 209,
                      ),
                      Image.asset(
                        'assest/ic_Screen_1.png',
                        height: 267,
                        width: 360,
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      const Text(
                        'The best tech market',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: "SF Pro Text",
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w700,
                            shadows: [
                              Shadow(
                                  offset: Offset(0, 2),
                                  blurRadius: 80,
                                  color: Color(0xFFFFFFFF))
                            ]),
                      )
                    ],
                  ),
                  //Second page
                  ListView(
                    children: [
                      const SizedBox(
                        height: 60,
                      ),
                      Stack(children: [
                        Positioned(
                            child: Image.asset(
                          'assest/ic_Screen_2.png',
                        ))
                      ]),
                      const Text(
                        'The best tech market',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "SF Pro Text",
                            fontSize: 24,
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w700,
                            shadows: [
                              Shadow(
                                  offset: Offset(0, 2),
                                  blurRadius: 80,
                                  color: Color(0xFFFFFFFF))
                            ]),
                      )
                    ],
                  ),
                  //third page
                  ListView(
                    children: [
                      const SizedBox(
                        height: 110,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 32),
                        child: Image.asset(
                          'assest/ic_Screen_3.png',
                          width: 467,
                          height: 410,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Sales all the time',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "SF Pro Text",
                            fontSize: 24,
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w700,
                            shadows: [
                              Shadow(
                                  offset: Offset(0, 2),
                                  blurRadius: 80,
                                  color: Color(0xFFFFFFFF))
                            ]),
                      )
                    ],
                  ),
                  // Account page
                  Column(
                    children: [
                      const SizedBox(
                        height: 67,
                      ),
                      const Text(
                        'Connexion',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "SF Pro Text",
                            fontSize: 24,
                            color: Color(0xFFFFFFFF)),
                      ),
                      const SizedBox(
                        height: 245,
                      ),
                      Container(
                          height: 53,
                          width: 311,
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(0, 4),
                                  blurRadius: 4,
                                  color: Color(0xAA000000))
                            ],
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFFFFFFFF))),
                            child: const Text(
                              'Create an account',
                              style: TextStyle(
                                  fontFamily: "SF Pro Text",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xAA0001FC)),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const CreateAccount(),
                                  ));
                            },
                          )),
                      const SizedBox(
                        height: 32,
                      ),
                      Container(
                          height: 53,
                          width: 311,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFFFFF),
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(0, 4),
                                  blurRadius: 4,
                                  color: Color(0xAA000000))
                            ],
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assest/ic_Google.png'),
                              const Text(
                                'Connect with Google',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "SF Pro Text",
                                    fontSize: 18,
                                    color: Color(0xFF555555)),
                              )
                            ],
                          )),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                          height: 53,
                          width: 311,
                          decoration: BoxDecoration(
                            color: const Color(0xFF415A93),
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(0, 4),
                                  blurRadius: 4,
                                  color: Color(0xFF000000))
                            ],
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assest/ic_Facebook.png'),
                              const Text(
                                'Connect with Facebook',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "SF Pro Text",
                                    fontSize: 18,
                                    color: Color(0xFFFFFFFF)),
                              )
                            ],
                          )),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Already have an account ?',
                            style: TextStyle(
                                fontFamily: "SF Pro Text",
                                fontSize: 18,
                                color: Color(0xFFFBDF00)),
                          ),
                          Text(
                            ' Login',
                            style: TextStyle(
                                fontFamily: "SF Pro Text",
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Color(0xFFFBDF00)),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Flexible(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        contain.length,
                        (index) => Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: currentindex == index
                                      ? const Color(0xFFFFFFFF)
                                      : const Color.fromRGBO(
                                          225, 225, 225, 0.32)),
                              margin: const EdgeInsets.all(3),
                              height: currentindex == index ? 7 : 5,
                              width: currentindex == index ? 7 : 5,
                            )),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      currentindex == contain.length - 1
                          ? Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              ))
                          : _controlller.nextPage(
                              duration: const Duration(microseconds: 1000),
                              curve: Curves.easeIn);
                    },
                    child: Text(
                      currentindex == contain.length - 1
                          ? 'Skip for now'
                          : 'Next',
                      style: const TextStyle(
                          fontSize: 18,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class Screen {
  String img;
  String title;
  Screen({required this.img, required this.title});
}
