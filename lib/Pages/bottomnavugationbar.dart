import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:project/Pages/catagoryPage.dart';
import 'package:project/Pages/explorePage.dart';
import 'package:project/Pages/SearchPage.dart';
import 'package:project/Pages/profilePage.dart';
import 'package:project/Pages/homePage.dart';

class Custombottomnivationbar extends StatelessWidget {
  Custombottomnivationbar({super.key});
  NavigationControllor navigationControllor = Get.put(NavigationControllor());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Obx(
        () => Container(
          // width: 80,
          // color: Colors.black,
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BottomNavigationBar(
              // backgroundColor: Color.fromARGB(0, 255, 255, 255),

              type: BottomNavigationBarType.fixed,
              // unselectedItemColor: Color.fromARGB(255, 44, 113, 15),
              selectedItemColor: const Color.fromARGB(255, 23, 24, 23),
              // elevation: 10,
              iconSize: 33,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              backgroundColor: Color.fromARGB(255, 224, 224, 255),
              selectedLabelStyle:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              currentIndex: navigationControllor.selectedIndex.value,
              onTap: (value) =>
                  navigationControllor.selectedIndex.value = value,
              items: [
                BottomNavigationBarItem(
                  icon: navigationControllor.selectedIndex.value == 0
                      ? Image.asset(
                          "assets/icons/home_fill.png",
                          width: 27,
                        )
                      : Image.asset(
                          "assets/icons/home_mt.png",
                          width: 26,
                        ),

                  label: "Home",
                  // backgroundColor: Color.fromARGB(255, 187, 192, 195),
                ),
                BottomNavigationBarItem(
                  icon: navigationControllor.selectedIndex.value == 1
                      ? Image.asset(
                          "assets/icons/search_fill.png",
                          width: 29,
                          // height: 33,
                        )
                      : Image.asset(
                          "assets/icons/search_emt.png",
                          width: 26,
                        ),
                  label: "Search",
                  // backgroundColor: Color.fromARGB(255, 187, 192, 195),
                ),
                BottomNavigationBarItem(
                  icon: navigationControllor.selectedIndex.value == 2
                      ? Image.asset(
                          "assets/icons/compass_fill.png",
                          // width: ,
                          height: 28,
                        )
                      : Image.asset(
                          "assets/icons/compass_emt.png",
                          width: 29,
                        ),
                  label: "Catagory",
                  // backgroundColor: Color.fromARGB(255, 187, 192, 195),
                ),
                BottomNavigationBarItem(
                  icon: navigationControllor.selectedIndex.value == 3
                      ? Image.asset(
                          "assets/icons/category_fill.png",
                          // width: ,
                          height: 26,
                        )
                      : Image.asset(
                          "assets/icons/catagory_emt.png",
                          width: 25,
                        ),
                  label: "Catagory",
                  // backgroundColor: Color.fromARGB(255, 187, 192, 195),
                ),
                BottomNavigationBarItem(
                  icon: navigationControllor.selectedIndex.value == 4
                      ? Image.asset(
                          "assets/icons/user_fill.png",
                          // width: ,
                          height: 28,
                        )
                      : Image.asset(
                          "assets/icons/user_emt.png",
                          width: 27,
                        ),
                  label: "Profile",
                  // backgroundColor: Color.fromARGB(255, 187, 192, 195),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Obx(
        () => navigationControllor
            .pages[navigationControllor.selectedIndex.value],
      ),
    );
  }
}
// controllor

class NavigationControllor extends GetxController {
  RxInt selectedIndex = 0.obs;

  List pages = [
    HomePage(),
    const SearchPage(),
    const ExplorePage(),
    const CatagoryPage(),
    const ProfilePage()
  ];
}

//  Container(
//         margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
//         height: 70,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(40),
//           color: Colors.black,
//         ),
//         child: BottomNavigationBar(items: [
//           BottomNavigationBarItem(icon: Icon(Icons.add), label: "add"),
//           BottomNavigationBarItem(icon: Icon(Icons.add), label: "add"),
//           BottomNavigationBarItem(icon: Icon(Icons.add), label: "add"),
//         ]),
//       ),
