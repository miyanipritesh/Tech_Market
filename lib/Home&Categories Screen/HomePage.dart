import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../Search_Screen/full_page.dart';
import 'Categories.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  List option = [
    Categeries(
      img: 'assest/ic_icon1.png',
      name: 'Categories',
    ),
    Categeries(
      img: 'assest/ic_icon2.png',
      name: 'Favorites',
    ),
    Categeries(
      img: 'assest/ic_icon3.png',
      name: 'Gifts',
    ),
    Categeries(
      img: 'assest/ic_icon4.png',
      name: 'Best selling',
    ),
    Categeries(
      img: 'assest/ic_icon1.png',
      name: 'Categories',
    ),
    Categeries(
      img: 'assest/ic_icon1.png',
      name: 'Categories',
    ),
  ];

  List cat = [
    'assest/ic_Smartphone.png',
    'assest/ic_Monitor.png',
    'assest/ic_Smartphone.png',
    'assest/ic_Monitor.png',
  ];
  List name = ['Smartphones', 'Monitors', 'Smartphones', 'Monitors'];
  List navigation = [
    const Categories(),
    const Categories(),
    const Categories(),
    const Categories(),
    const Categories(),
    const Categories()
  ];

  int index1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFDFEFF),
        body: SafeArea(
            child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 21),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Home',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            CarouselSlider(
              options: CarouselOptions(
                  // autoPlay: true,
                  reverse: false,
                  initialPage: 0,
                  enlargeCenterPage: true,
                  aspectRatio: 4.0,
                  onPageChanged: (index, t) {
                    setState(() {
                      index1 = index;
                    });
                  }),
              items: List.generate(
                navigation.length,
                (index1) => InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FullPage(),
                        ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: const Color(0xFF0001FC)),
                    height: 110,
                    width: 343,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Bose Home Speaker',
                              style: TextStyle(
                                  fontFamily: "SF Pro Text",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Color(0xFFFFFFFF)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 119),
                              child: Align(
                                child: Text(
                                  'USD 279',
                                  style: TextStyle(
                                      fontFamily: "SF Pro Text",
                                      fontSize: 12,
                                      color: Color(0xFFFFFFFF)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Image.asset('assest/ic_speker.png'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    navigation.length,
                    (index2) => Container(
                          decoration: BoxDecoration(
                              color: index2 == index1
                                  ? const Color(0xFFA7A9BE)
                                  : const Color.fromRGBO(167, 169, 190, 0.32),
                              borderRadius: BorderRadius.circular(5)),
                          margin: const EdgeInsets.all(2),
                          height: index2 == index1 ? 7 : 5,
                          width: index2 == index1 ? 7 : 5,
                        ))),
            const SizedBox(
              height: 29,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                      option.length,
                      (index) => Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => navigation[index],
                                      ));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(option[index].img)),
                                      color: const Color(0xFFE0ECF8),
                                      borderRadius: BorderRadius.circular(56)),
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  height: 56,
                                  width: 56,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                option[index].name,
                                style: const TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF1F53E4),
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ))),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Sales',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0A1034)),
            ),
            const SizedBox(
              height: 16,
            ),
            GridView.builder(
                shrinkWrap: true,
                itemCount: cat.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 3,
                    childAspectRatio: 1 / 1.3,
                    mainAxisSpacing: 3,
                    crossAxisCount: 2),
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const FullPage(),
                              ));
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.03),
                                offset: Offset(
                                  0,
                                  2,
                                ),
                                blurRadius: 5.0,
                              ),
                            ],
                          ),
                          height: 251,
                          width: 161,
                          child: Card(
                            elevation: 0,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 8,
                                    left: 12,
                                  ),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      child: const Center(
                                        child: Text(
                                          '-50%',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFF1F53E4)),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: const Color(0xFFE0ECF8),
                                          borderRadius:
                                              BorderRadius.circular(2)),
                                      height: 22,
                                      width: 34,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 23,
                                ),
                                Image.asset(
                                  cat[index],
                                ),
                                const SizedBox(
                                  height: 22,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    name[index],
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF0A1034)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ))
          ],
        )));
  }
}

class Categeries {
  String img;
  String name;
  Categeries({
    required this.img,
    required this.name,
  });
}
