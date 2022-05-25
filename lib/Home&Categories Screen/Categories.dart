import 'package:flutter/material.dart';
import 'package:untitled/Home&Categories%20Screen/Categories_Detail.dart';

import '../Search_Screen/search.dart';
import '../cart/trecking.dart';
import '../setting/account.dart';
import 'HomePage.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List categories = [
    'All',
    'Computers',
    'Accessories',
    'Smartphones',
    'Smart objects',
    'Speakers',
    'Accessories',
    'Smart objects',
  ];
  List screen = [
    const HomePage1(),
    const SearchScreen(),
    const Trecking(),
    //   const CheckoutPage(),
    const AccountPage()
  ];
  List navigation1 = [
    const CategoriesDetail(),
    const CategoriesDetail(),
    const CategoriesDetail(),
    const CategoriesDetail(),
    const CategoriesDetail(),
    const CategoriesDetail(),
    const CategoriesDetail(),
    const CategoriesDetail(),
  ];
  int index1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(253, 254, 255, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFFDFEFF),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: ImageIcon(
              AssetImage('assest/ic_ic_backicon.png'),
              color: Color(0xFF0A1034),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Categories',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0A1034)),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ListView(
            shrinkWrap: true,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              categories.length,
              (index) => Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.04),
                            offset: Offset(0, 8),
                            blurRadius: 10.0,
                          ),
                        ],
                        color: const Color(0xFFFFFFFF),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(6)),
                    height: 77,
                    width: 343,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => navigation1[index],
                            ));
                      },
                      child: Card(
                        elevation: 0.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 20),
                          child: Text(
                            categories[index],
                            // textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF0A1034)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  )
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
        currentIndex: index1,
        onTap: (index1) {
          setState(() {
            screen[index1] = index1;
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
            icon: ImageIcon(
              AssetImage('assest/ic_checkout_icon_1.png'),
              size: 25,
            ),
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
}
