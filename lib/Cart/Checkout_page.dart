import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled/Search_Screen/full_page.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  List checkout = ['assest/ic_Product (1).png', 'assest/ic_Product (3).png'];
  List price = ['999', '249'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFEFF),
      body: SafeArea(
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16, top: 15),
              child: Text(
                'Checkout',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 32,
                    color: Color(0xFF0A1034)),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    checkout.length,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3),
                          child: Card(
                            elevation: 0,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const FullPage(),
                                    ));
                              },
                              child: Container(
                                decoration: const BoxDecoration(boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.03),
                                    offset: Offset(0, 8),
                                    blurRadius: 24.0,
                                  ),
                                ], color: Color(0xFFFFFFFF)),
                                margin: const EdgeInsets.only(
                                  left: 2,
                                ),
                                height: 324,
                                width: 210,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 8,
                                        left: 12,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              child: const Center(
                                                child: Text(
                                                  'New',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color(0xFF1F53E4)),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xFFE0ECF8),
                                                  borderRadius:
                                                      BorderRadius.circular(2)),
                                              height: 22,
                                              width: 34,
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(right: 8),
                                            child: ImageIcon(
                                              AssetImage('assest/ic_close.png'),
                                              color: Color(0xFFA7A9BE),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 43,
                                    ),
                                    Image.asset(
                                      checkout[index],
                                      height: 130,
                                      width: 97,
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(left: 16, top: 37),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'iPhone 11 Pro',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF0A1034)),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16, top: 2, right: 16),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              'USD ${price[index]}',
                                              style: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xFF0001FC)),
                                            ),
                                          ),
                                          Container(
                                            child: const Center(
                                              child: Text(
                                                'x1',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFF1F53E4)),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                color: const Color(0xFFE0ECF8),
                                                borderRadius:
                                                    BorderRadius.circular(2)),
                                            height: 25,
                                            width: 22,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(left: 16, top: 5),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'White',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFFA7A9BE)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            SizedBox(
              height: 37,
              width: 341,
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Delivery',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color(0xFF0A1034)),
                    ),
                    Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 30),
                          child: Text(
                            '12 Madison Avenue, NYC',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0xFF0001FC)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 32),
                          child: Text(
                            'Fast delivery : 17/11/19',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xFFA7A9BE)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 35, vertical: 0),
              child: Divider(
                thickness: 2,
                color: Color(0xFFE0ECF8),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 37,
              width: 341,
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 15),
                child: Row(
                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Payment',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color(0xFF0A1034)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 105),
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 35),
                            child: Text(
                              'Visa ***678',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color(0xFF0001FC)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 0),
                            child: Text(
                              'Fast delivery : 17/11/19',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xFFA7A9BE)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.keyboard_arrow_down_outlined)
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 35, vertical: 0),
              child: Divider(
                thickness: 2,
                color: Color(0xFFE0ECF8),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 37,
              width: 341,
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Total',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color(0xFF0A1034)),
                    ),
                    Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'USD 1248',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0xFF0001FC)),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 25),
                          child: Text(
                            'Enter a discount code',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xFF2DB57D)),
                          ),
                        ),
                      ],
                    ),
                  ],
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
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFF0135EB))),
                  onPressed: _show,
                  child: const Text(
                    'Pay',
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
    );
  }

  _show() {
    showDialog(
        context: context,
        barrierColor: const Color(0xFF0135EB),
        builder: (BuildContext ctx) {
          return BackdropFilter(
              blendMode: BlendMode.srcATop,
              filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 249,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assest/ic_check icon.png')),
                          color: const Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(180)),
                      height: 180,
                      width: 180,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Text(
                      'Order validate!',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: Color(0xFFFFFFFF)),
                    )
                  ],
                ),
              ));
        });
  }
}
