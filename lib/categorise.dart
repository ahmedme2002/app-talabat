import 'package:flutter/material.dart';
import 'package:newshope/itemsdetails.dart';

class Categorise extends StatefulWidget {
  const Categorise({super.key});

  @override
  State<Categorise> createState() => _CategoriseState();
}

class _CategoriseState extends State<Categorise> {
  List collection = [
    {"image": "images/1.png", "name": "Sandel", "tittle": "prodict title"},
    {"image": "images/2.png", "name": "watch", "tittle": "prodict title"},
    {"image": "images/3.png", "name": "handbag", "tittle": "prodict title"},
    {"image": "images/4.png", "name": "bag", "tittle": "prodict title"},
    {"image": "images/5.png", "name": "pinkpag", "tittle": "prodict title"},
    {"image": "images/6.png", "name": "sandel", "tittle": "prodict title"},
    {"image": "images/7.png", "name": "Smart Watch", "tittle": "prodict title"},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        itemCount: collection.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            mainAxisExtent: 250),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Itemsdetails(data: collection[index])));
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Text(
                          "- 50%",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const Icon(
                        Icons.favorite_outline,
                        color: Colors.red,
                      )
                    ],
                  ),
                  Container(
                    child: Image.asset(
                      collection[index]["image"],
                      fit: BoxFit.cover,
                      height: 100,
                    ),
                  ),
                  Container(
                    // padding: EdgeInsets.only(left: 5),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      collection[index]["tittle"],
                      style: TextStyle(
                          color: Colors.indigo,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    // padding: EdgeInsets.only(left: 5),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "${collection[index]["name"]} is very good material ",
                      style: TextStyle(
                        color: Colors.indigo.withOpacity(0.5),
                        // fontSize: 12,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "55\$",
                        style: TextStyle(
                            color: Colors.indigo, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.shopping_cart_checkout_sharp,
                        color: Colors.indigo,
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
