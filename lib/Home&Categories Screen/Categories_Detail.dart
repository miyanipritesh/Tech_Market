import 'package:flutter/material.dart';

class CategoriesDetail extends StatefulWidget {
  const CategoriesDetail({Key? key}) : super(key: key);

  @override
  State<CategoriesDetail> createState() => _CategoriesDetailState();
}

class _CategoriesDetailState extends State<CategoriesDetail> {
  List img = [
    'assest/ic_Surface laptop.png',
    'assest/ic_OriginalPng.png',
    'assest/ic_Lg gram.png',
    'assest/ic_Macbook.png',
    'assest/ic_Pixelbook.png',
    'assest/ic_Huawei.png'
  ];
  List name = [
    'Surface laptop 3',
    'XPS laptop 13',
    'ic_Lg gram.png',
    'Macbook pro 13',
    'Macbook M1 ',
    'Macbook pro 13'
  ];

  List price = ['999', '899', '1399', '1299', '1500', '1447'];

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 14,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Laptop',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0A1034)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: const Color(0xFFA7A9BE))),
                  height: 33,
                  width: 151,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Ascending price",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFA7A9BE)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.arrow_upward,
                        size: 16,
                        color: Color(0xFFA7A9BE),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        size: 15,
                        color: Color(0xFFA7A9BE),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: const [
                    Text(
                      "Filters",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFA7A9BE)),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Color(0xFFA7A9BE),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 52),
                  child: ImageIcon(
                    AssetImage('assest/ic_Mise en page.png'),
                    color: Color(0xFFA7A9BE),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: img.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2,
                    childAspectRatio: 1 / 1.18),
                itemBuilder: (context, index) => Container(
                  height: 200,
                  width: 167,
                  decoration: BoxDecoration(boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.04),
                      offset: Offset(0, 8),
                      blurRadius: 12.0,
                    ),
                  ], borderRadius: BorderRadius.circular(4)),
                  child: Card(
                    elevation: 0,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 32,
                        ),
                        Image.asset(img[index]),
                        const SizedBox(
                          height: 42,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              name[index],
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF0A1034)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "USD ${price[index]}",
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF0001FC)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
