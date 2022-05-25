import 'package:flutter/material.dart';

import 'Login.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0001FC),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 67,
            ),
            const Text(
              'Create an account',
              // textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 127,
            ),
            //Full name field
            Container(
              margin: const EdgeInsets.only(left: 48),
              alignment: Alignment.topLeft,
              child: const Text(
                "Full name",
                //     textAlign: TextAlign.start,
                style: TextStyle(fontSize: 18, color: Color(0xFFFFFFFF)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: SizedBox(
                height: 35,
                child: TextField(
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                      hintText: 'Full Name',
                      hintStyle: const TextStyle(
                          fontSize: 16, color: Color(0xFFFFFFFF)),
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFFFFFFF), width: 1.0),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFFFFFFF), width: 1.0),
                      ),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xFFFFFFFF), width: 10),
                          borderRadius: BorderRadius.circular(4))),
                ),
              ),
            ),

            //Email Enter field
            const SizedBox(
              height: 24,
            ),
            Container(
              margin: const EdgeInsets.only(left: 48),
              alignment: Alignment.topLeft,
              child: const Text(
                "Email",
                //     textAlign: TextAlign.start,
                style: TextStyle(fontSize: 18, color: Color(0xFFFFFFFF)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: SizedBox(
                height: 35,
                child: TextField(
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: const TextStyle(
                          fontSize: 16, color: Color(0xFFFFFFFF)),
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFFFFFFF), width: 1.0),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFFFFFFF), width: 1.0),
                      ),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xFFFFFFFF), width: 10),
                          borderRadius: BorderRadius.circular(4))),
                ),
              ),
            ),

            //password enter Field
            const SizedBox(
              height: 24,
            ),
            Container(
              margin: const EdgeInsets.only(left: 48),
              alignment: Alignment.topLeft,
              child: const Text(
                "Password ",
                //     textAlign: TextAlign.start,
                style: TextStyle(fontSize: 18, color: Color(0xFFFFFFFF)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: SizedBox(
                height: 35,
                child: TextField(
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: const TextStyle(
                          fontSize: 16, color: Color(0xFFFFFFFF)),
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFFFFFFF), width: 1.0),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFFFFFFF), width: 1.0),
                      ),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xFFFFFFFF), width: 10),
                          borderRadius: BorderRadius.circular(4))),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),

            //Button
            SizedBox(
              height: 53,
              width: 311,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xFFFFFFFF))),
                onPressed: () {},
                child: const Text(
                  'Validate',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF0001FC),
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),

            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account ? ',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFFFBDF00),
                      fontWeight: FontWeight.w400),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ));
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Color(0xFFFBDF00)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
