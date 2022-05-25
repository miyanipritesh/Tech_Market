import 'package:flutter/material.dart';

import 'full_page.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFEFF),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16, top: 25),
            child: Text(
              'Search',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF0A1034)),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(21.5)),
                  height: 43,
                  width: 343,
                  child: TextField(
                    textAlign: TextAlign.start,
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      hintText: 'What are you looking for ?',
                      filled: true,
                      fillColor: const Color(0xFFE0ECF8),
                      hintStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF1F53E4)),
                      prefixIcon: const ImageIcon(
                        AssetImage('assest/ic_Search icon.png'),
                        color: Color(0xFF1F53E4),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(21.5)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(21.5)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(21.5)),
                    ),
                  ))),
          const SizedBox(
            height: 32,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Last viewed',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF0A1034)),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              height: 105,
              width: 343,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.03),
                    offset: Offset(0, 8),
                    blurRadius: 12.0,
                  ),
                ],
              ),
              child: Card(
                //  color: Colors.green,
                elevation: 0,
                child: Center(
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FullPage(),
                          ));
                    },
                    leading: Image.asset('assest/ic_google-home-.png'),
                    title: const Text(
                      'Google Home mini',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF0A1034)),
                    ),
                    horizontalTitleGap: 39,
                    subtitle: const Text(
                      'USD 49',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF0135EB)),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              height: 105,
              width: 343,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.03),
                    offset: Offset(0, 8),
                    blurRadius: 12.0,
                  ),
                ],
              ),
              child: Card(
                elevation: 0,
                child: Center(
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FullPage(),
                          ));
                    },
                    leading: Image.asset(
                      'assest/ic_Product.png',
                      width: 65,
                    ),
                    title: const Text(
                      'Google Home mini',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF0A1034)),
                    ),
                    horizontalTitleGap: 39,
                    subtitle: const Text(
                      'USD 11',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF0135EB)),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const ListTile(
            leading: Text(
              'Lastest search',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF0A1034)),
            ),
            horizontalTitleGap: 39,
            trailing: Text(
              'Clean all history',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFA7A9BE)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Clean all history',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFA7A9BE)),
                ),
                ImageIcon(
                  AssetImage('assest/ic_erase.png'),
                  color: Color(0xFFA7A9BE),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Clean all history',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFA7A9BE)),
                ),
                ImageIcon(
                  AssetImage('assest/ic_erase.png'),
                  color: Color(0xFFA7A9BE),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
