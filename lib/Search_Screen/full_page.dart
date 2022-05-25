import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FullPage extends StatefulWidget {
  const FullPage({Key? key}) : super(key: key);

  @override
  State<FullPage> createState() => _FullPageState();
}

class _FullPageState extends State<FullPage> {
  List color = [
    const Color(0xFF52514F),
    const Color(0xFFEBEBE4),
    const Color(0xFF6F7972),
    const Color(0xFFF5D8C0),
  ];
  List gb = ["64", '256', '512'];
  late final ValueChanged<bool>? onFocusChange;
  bool click1 = false;
  bool click2 = false;
  bool click3 = false;
  bool click4 = false;
  int current = 0;
  int current1 = 0;
  int current3 = 0;
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFEFF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFFDFEFF),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const ImageIcon(
            AssetImage('assest/ic_ic_backicon.png'),
            color: Color(0xFF0A1034),
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 12,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'iPhone 11 Pro',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Color(0xFF0A1034)),
            ),
          ),
          const SizedBox(
            height: 29,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              height: 560,
              width: 343,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        child: const Center(
                          child: Text(
                            'New',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFF1F53E4)),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: const Color(0xFFE0ECF8),
                            borderRadius: BorderRadius.circular(2)),
                        height: 22,
                        width: 39,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                        //autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 2.0,
                        initialPage: 0,
                        onPageChanged: (index, reason) {
                          setState(() {
                            current3 = index;
                          });
                        }),
                    items: List.generate(
                      4,
                      (index3) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: InkWell(
                          child: Image.asset('assest/ic_Product (1).png'),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 23,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          4,
                          (index) => InkWell(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: current3 == index
                                          ? const Color(0xFFA7A9BE)
                                          : const Color.fromRGBO(
                                              167, 169, 190, 0.32),
                                      borderRadius: BorderRadius.circular(5)),
                                  margin: const EdgeInsets.all(2),
                                  height: current3 == index ? 7 : 5,
                                  width: current3 == index ? 7 : 5,
                                ),
                              ))),
                  const Padding(
                    padding: EdgeInsets.only(top: 15, left: 32),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Color',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF0A1034)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      4,
                      (index) => InkWell(
                        onTap: () {
                          setState(() {
                            current = index;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: current == index
                                      ? const Color(0xFF0001FC)
                                      : color[index],
                                  width: current == index ? 2 : 1),
                              color: color[index],
                              borderRadius: BorderRadius.circular(24)),
                          height: 24,
                          width: 24,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15, left: 32),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Capacity',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF0A1034)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              current1 = index;
                            });
                          },
                          child: Text(
                            '${gb[index]} gb',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: current1 == index
                                    ? const Color(0xFF0001FC)
                                    : const Color(0xFFA7A9BE)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: SizedBox(
                      height: 53,
                      width: 343,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFF1F53E4))),
                        onPressed: _show,
                        child: const Text(
                          'Add to Cart',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF0001FC),
        unselectedItemColor: const Color(0xFF0A1034),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: const Color(0xFFEFF5FB),
        //currentIndex: index1,
        onTap: (index1) {
          setState(() {
            index1 = index1;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assest/ic_home.png')),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assest/ic_search.png')),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assest/ic_cart.png')),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assest/ic_setting.png')),
            label: 'Home',
          ),
        ],
      ),
    );
  }

  _show() {
    showDialog(
        context: context,
        barrierColor: Colors.transparent,
        builder: (BuildContext ctx) {
          return BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 25.0, sigmaY: 25.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 180,
                  ),
                  Image.asset(
                    'assest/ic_checkout_icon.png',
                  ),
                  const Text(
                    'Product added to Cart!',
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 24,
                        color: Color(0xFF0A1034),
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: SizedBox(
                      height: 53,
                      width: 343,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFF1F53E4))),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Back to shopping',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ],
              ));
        });
  }
}
