import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:project/controllor/profileDetailControllor.dart';

class ProfileMainPage extends StatelessWidget {
  ProfileMainPage({super.key});

  final ProfileMainControllor profileControllor =
      Get.put(ProfileMainControllor());

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
                  dividerHeight: 0,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  controller: profileControllor.controllor,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 254, 174, 53),
                  ),
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
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.8,
                child: TabBarView(
                  controller: profileControllor.controllor,
                  children: profileControllor.myTab,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
