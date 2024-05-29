import 'package:flutter/material.dart';

class CustomCategory extends StatelessWidget {
  const CustomCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      // width: 100,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color.fromARGB(255, 249, 196, 39),
      ),
      child: Text(
        "Art",
        style: TextStyle(
            // color: Colors.white,
            fontSize: 22,
            fontFamily: "Bhloo Bhai 2",
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
