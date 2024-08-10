import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newshope/apperhome.dart';
import 'package:newshope/categorise.dart';

class Shopehome extends StatefulWidget {
  const Shopehome({super.key});

  @override
  State<Shopehome> createState() => _ShopehomeState();
}

class _ShopehomeState extends State<Shopehome> {
  List iteams = [
    {"images": "images/1.png", "name": "Sandel"},
    {"images": "images/2.png", "name": "watch"},
    {"images": "images/3.png", "name": "handbag"},
    {"images": "images/4.png", "name": "bag"},
    {"images": "images/5.png", "name": "pinkpag"},
    {"images": "images/6.png", "name": "sandel"},
    {"images": "images/7.png", "name": "Smart Watch"},
  ];

  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[200],
          selectedItemColor: Colors.indigo,
          onTap: (value) {
            setState(() {
              selectedindex = value;
            });
          },
          currentIndex: selectedindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.menu_outlined), label: ""),
          ]),
      body: ListView(
        children: [
          Apperhome(),
          Container(
            // height: 500,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35))),
            child: Column(
              children: [
                Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 300,
                        margin: EdgeInsets.only(left: 5),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search here..."),
                        ),
                      ),
                      Icon(
                        Icons.camera_alt,
                        color: Colors.indigo,
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  child: Text(
                    "Categories",
                    style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  height: 50,
                  child: ListView.builder(
                    itemCount: iteams.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              height: 30,
                              width: 30,
                              child: Image.asset(iteams[index]["images"],
                                  fit: BoxFit.cover),
                            ),
                            Text(
                              iteams[index]["name"],
                              style: const TextStyle(
                                  color: Colors.indigo,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  child: const Text(
                    "Best Selling",
                    style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Categorise(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
