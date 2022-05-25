import 'package:flutter/material.dart';

class EmailPage extends StatefulWidget {
  const EmailPage({Key? key}) : super(key: key);

  @override
  State<EmailPage> createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {
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
                  "Email",
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
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListTile(
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
              ),
            ),
            const SizedBox(
              height: 56,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  "New email adress",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xFF0A1034)),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  height: 35,
                  width: 280,
                  child: TextField(
                    textAlignVertical: TextAlignVertical.bottom,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                        hintStyle: const TextStyle(color: Color(0xFFA7A9BE)),
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: const BorderSide(
                                color: Color(0xFFA7A9BE), width: 1))),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  "Confirm email adress",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xFF0A1034)),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  height: 35,
                  width: 280,
                  child: TextField(
                    textAlignVertical: TextAlignVertical.bottom,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                        hintStyle: const TextStyle(color: Color(0xFFA7A9BE)),
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: const BorderSide(
                                color: Color(0xFFA7A9BE), width: 1))),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                height: 53,
                width: 343,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFF1F53E4))),
                  onPressed: () {},
                  child: const Text(
                    'Confirm modification',
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
