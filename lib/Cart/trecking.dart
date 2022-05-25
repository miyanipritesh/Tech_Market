import 'package:flutter/material.dart';

class Trecking extends StatefulWidget {
  const Trecking({Key? key}) : super(key: key);

  @override
  State<Trecking> createState() => _TreckingState();
}

class _TreckingState extends State<Trecking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFEFF),
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 16,
              ),
              child: Text(
                'Tracking',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 32,
                    color: Color(0xFF0A1034)),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Image.asset("assest/ic_Graph.png"),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                child: SizedBox(
                  height: 88,
                  width: 343,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 16, left: 24),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Tracking number',
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
                        children: const [
                          Text(
                            'UPS',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF0A1034)),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            'LO40569863554NI',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF0001FC)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 32, right: 269),
              child: Text(
                "01/11/19",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Color(0xFF0A1034)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 32, right: 197),
              child: Text(
                "Seller shipped your order.",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFFA7A9BE)),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 32, right: 269),
              child: Text(
                "03/11/19",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Color(0xFF0A1034)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 32, right: 154),
              child: Text(
                "Your order left the sorting center.",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFFA7A9BE)),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 32, right: 269),
              child: Text(
                "04/11/19",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Color(0xFF0A1034)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 32, right: 127),
              child: Text(
                "Your order has arrived in Paris, France",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFFA7A9BE)),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 32, right: 269),
              child: Text(
                "05/11/19",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Color(0xFF0A1034)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 32, right: 154),
              child: Text(
                "Your order has left Paris, France.",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFFA7A9BE)),
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 234,
              ),
              child: Text(
                "Report a problem",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Color(0xFF2DB57D)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
