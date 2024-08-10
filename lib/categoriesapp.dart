import 'package:flutter/material.dart';

class Categoriesapp extends StatefulWidget {
  const Categoriesapp({super.key});

  @override
  State<Categoriesapp> createState() => _CategoriesappState();
}

class _CategoriesappState extends State<Categoriesapp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      color: Colors.white,
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.indigo,
              size: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Car",
              style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 250,
          ),
          Container(
            // alignment: Alignment.topLeft,
            child: Icon(
              Icons.more_vert,
              color: Colors.indigo,
            ),
          )
        ],
      ),
    );
  }
}
