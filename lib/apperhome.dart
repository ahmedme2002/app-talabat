import 'package:flutter/material.dart';
import 'package:newshope/caritemes.dart';

// import 'package:flutter/widgets.dart';

class Apperhome extends StatefulWidget {
  const Apperhome({super.key});

  @override
  State<Apperhome> createState() => _ApperhomeState();
}

class _ApperhomeState extends State<Apperhome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Icon(
                  Icons.sort,
                  color: Colors.indigo,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Dp Shop",
                  style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Caritems()));
            },
            child: Container(
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topRight,
                children: [
                  Container(
                      child: Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.indigo,
                    size: 25,
                  )),
                  Positioned(
                    right: -5,
                    top: -4,
                    child: Container(
                        alignment: Alignment.center,
                        width: 15,
                        height: 15,
                        // padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.red,
                        ),
                        child: Text(
                          "3",
                          style: TextStyle(fontSize: 8, color: Colors.white),
                        )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
