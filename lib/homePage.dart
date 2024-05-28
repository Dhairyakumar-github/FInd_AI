import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/Pages/bottomnavugationbar.dart';
import 'package:project/Pages/SearchPage.dart';
import 'package:project/Widgits/card.dart';
import 'package:project/Widgits/tabbar.dart';
import 'package:project/controllor/controllor.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // bottomNavigationBar: Custombottomnivationbar(),
      // appBar: AppBar(
      //   backgroundColor: const Color.fromARGB(255, 150, 207, 235),
      // ),
      backgroundColor: Color.fromARGB(255, 242, 245, 245),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Find Ai ",
                  style: TextStyle(
                      fontFamily: "Bhloo Bhai 2",
                      fontSize: 45,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 75, 69, 69)),
                ),
              ),
            ),
            // Hero(
            //   tag: "hero",
            //   child: GestureDetector(
            //     onTap: () {
            //       Get.to(NewPage());
            //       // Navigator.push(context,
            //       //     MaterialPageRoute(builder: (context) => NewPage()));
            //     },
            //     child: Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Container(
            //             height: 70,
            //             width: MediaQuery.of(context).size.width * .7,
            //             color: Colors.blue,
            //           ),
            //           const SizedBox(
            //             width: 20,
            //           ),
            //           Container(
            //             width: 70,
            //             height: 70,
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(25),
            //               color: Colors.black,
            //             ),
            //             child: const Icon(
            //               Icons.filter_alt,
            //               color: Colors.white,
            //               size: 26,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            // const SizedBox(
            //   height: 10,
            // ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Cardd(),
                  Cardd(),
                  Cardd(),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),

            // tabbar
            // CustomTabbar()
          ],
        ),
      ),
    );
  }
}
