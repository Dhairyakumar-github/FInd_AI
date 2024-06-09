import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project/controllor/profileDetailControllor.dart';

class ProfileMainPage extends StatelessWidget {
  ProfileMainPage({super.key});

  ProfileMainControllor profileControllor = Get.put(ProfileMainControllor());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: DefaultTabController(
        length: 2,
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Color.fromARGB(255, 235, 236, 237),
                  ),
                  child: TabBar(
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    controller: profileControllor.controllor,
                    dividerHeight: 0,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromARGB(255, 254, 174, 53)),
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: [
                      Text(
                        "Profile",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "Uploads",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                // SizedBox(
                //     // height: 30,
                //     ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: TabBarView(
                    controller: profileControllor.controllor,
                    children: profileControllor.myTab,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
