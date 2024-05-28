import 'dart:ui';

import 'package:flutter/material.dart';

class Cardd extends StatelessWidget {
  const Cardd({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
      ),
      child: Stack(
        children: [
          Positioned(
            child: Container(
              width: 250,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // color: Colors.black,
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: 250,
                      height: 220,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.white,
                      ),
                      child: const Stack(
                        children: [
                          Positioned(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Text(
                                    "This is title1",
                                    style: TextStyle(
                                      fontSize: 24,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Text(
                                    "This is title1",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            ),
                          ),
                          // Stack(
                          //   children: [
                          //     Positioned(
                          //       child: BackdropFilter(
                          //         filter: ImageFilter.blur(
                          //             sigmaX: 10.0, sigmaY: 10.0),
                          //         child: Container(
                          //           decoration: BoxDecoration(
                          //               shape: BoxShape.circle,
                          //               color: Colors.black26),
                          //           height: 60,
                          //           width: 60,
                          //         ),
                          //       ),
                          //     ),
                          //   ],
                          // ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.55,
                      height: 180,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Color.fromARGB(255, 131, 146, 200),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
