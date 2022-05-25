import 'package:flutter/material.dart';

import '../Search_Screen/search.dart';
import '../cart/Checkout_page.dart';
import '../setting/account.dart';
import 'HomePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List screen = [
    const HomePage1(),
    const SearchScreen(),
    //  const Trecking(),
    const CheckoutPage(),
    const AccountPage()
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF0001FC),
        unselectedItemColor: const Color(0xFF0A1034),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: const Color(0xFFEFF5FB),
        currentIndex: index,
        onTap: (index1) {
          setState(() {
            index = index1;
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
