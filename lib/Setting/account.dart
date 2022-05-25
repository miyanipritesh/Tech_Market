import 'package:flutter/material.dart';

import 'account_information.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  List account = [
    'Orders',
    'Returns and refunds',
    'Account information',
    'Security and settings',
    'Help'
  ];
  List navogator = [
    const AccountImformation(),
    const AccountImformation(),
    const AccountImformation(),
    const AccountImformation(),
    const AccountImformation(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(253, 254, 255, 1),
      body: ListView(
        children: [
          const SizedBox(
            height: 24,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 16,
            ),
            child: Text(
              'Account',
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 32,
                  color: Color(0xFF0A1034)),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 69),
            child: SizedBox(
                height: 80,
                width: 274,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assest/ic_Profil_pic.png"),
                    const SizedBox(
                      height: 16,
                    ),
                    Column(
                      children: const [
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "James Warden",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF0A1034)),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 40),
                          child: Text(
                            "Premium member",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF0001FC)),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
          ),
          const SizedBox(
            height: 40,
          ),
          Column(
            children: List.generate(
                account.length,
                (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.03),
                                  offset: Offset(0, 8),
                                  blurRadius: 12.0,
                                ),
                              ],
                            ),
                            height: 62,
                            width: 343,
                            child: Card(
                              elevation: 0,
                              child: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                width: MediaQuery.of(context).size.width,
                                child: ListTile(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              navogator[index],
                                        ));
                                  },
                                  leading: Text(
                                    account[index],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: Color(0xFF0A1034)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          )
                        ],
                      ),
                    )),
          )
        ],
      ),
    );
  }
}
