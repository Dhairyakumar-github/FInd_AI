import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width * 0.95,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 229, 227, 222),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.77,
              child: TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.top,
                style: const TextStyle(fontSize: 20),
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    hintText: "Type Something",
                    hintStyle: TextStyle(fontSize: 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none)),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.amber,
              ),
              child: Icon(Icons.search),
            ),
          ],
        ),
      ),
    );
  }
}
