import 'package:flutter/material.dart';

import 'email.dart';

class AccountImformation extends StatefulWidget {
  const AccountImformation({Key? key}) : super(key: key);

  @override
  State<AccountImformation> createState() => _AccountImformationState();
}

class _AccountImformationState extends State<AccountImformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFEFF),
      body: SafeArea(
        child: ListView(
          children: [
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 30),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset('assest/ic_ic_backicon.png')),
                )),
            const SizedBox(
              height: 24,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  "Account information",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Color(0xFF0A1034)),
                ),
              ),
            ),
            const SizedBox(
              height: 31,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EmailPage(),
                    ));
              },
              title: const Text(
                "User name",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Color(0xFF0A1034)),
              ),
              subtitle: const Text(
                "James Warden",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xFF0001FC)),
              ),
              trailing: const Text(
                "Change",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFFA7A9BE)),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EmailPage(),
                    ));
              },
              title: const Text(
                "Email",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Color(0xFF0A1034)),
              ),
              subtitle: const Text(
                "j-warden@email.com",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xFF0001FC)),
              ),
              trailing: const Text(
                "Change",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFFA7A9BE)),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EmailPage(),
                    ));
              },
              title: const Text(
                "Phone number",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Color(0xFF0A1034)),
              ),
              subtitle: const Text(
                "+33 6 16 39 54 78",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xFF0001FC)),
              ),
              trailing: const Text(
                "Change",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFFA7A9BE)),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EmailPage(),
                    ));
              },
              title: const Text(
                "Password",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Color(0xFF0A1034)),
              ),
              subtitle: const Text(
                "*******************",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xFF0001FC)),
              ),
              trailing: const Text(
                "Change",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFFA7A9BE)),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EmailPage(),
                    ));
              },
              title: const Text(
                "Account type",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Color(0xFF0A1034)),
              ),
              subtitle: const Text(
                "Premium",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xFF0001FC)),
              ),
              trailing: const Text(
                "Change",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFFA7A9BE)),
              ),
            ),
          ],
        ),
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
}
