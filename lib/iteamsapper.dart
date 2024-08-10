import 'package:flutter/material.dart';

class Iteamsapper extends StatefulWidget {
  const Iteamsapper({super.key});

  @override
  State<Iteamsapper> createState() => _IteamsapperState();
}

class _IteamsapperState extends State<Iteamsapper> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          Container(
            child: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
