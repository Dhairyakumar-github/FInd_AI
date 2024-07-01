import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/Pages/ProfilePage/ProfileUploadsPage/profileUploadPage.dart';
import 'package:project/Pages/ProfilePage/profileMainPage.dart';
import 'package:project/Pages/settingPage.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 226, 241, 241),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: const Color.fromARGB(255, 235, 236, 237),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color.fromARGB(255, 167, 143, 207)),
                        // child: Image.network(src),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "John Deo",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                height: 1),
                          ),
                          Text(
                            "Johndeo@gmail.com",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 3,
                    child: SizedBox(
                      height: 400,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: InkWell(
                              onTap: () => Get.to(() => ProfileMainPage()),
                              child: Container(
                                alignment: Alignment.center,
                                margin:
                                    const EdgeInsets.only(left: 10, right: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromARGB(255, 255, 202, 45),
                                ),
                                height: double.infinity,
                                width: double.infinity,
                                child: Text(
                                  "Profile",
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: InkWell(
                              onTap: () => Get.to(() => ProfileUploadPage()),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                margin: const EdgeInsets.only(
                                    left: 10, right: 5, top: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color:
                                      const Color.fromARGB(255, 115, 59, 236),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.upload_rounded,
                                      size: 40,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Uploads",
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: SizedBox(
                        height: 400,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            Flexible(
                              flex: 3,
                              fit: FlexFit.tight,
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                // height: 300,
                                margin: const EdgeInsets.only(
                                  left: 5,
                                  right: 10,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 219, 188, 219),
                                ),
                                child: Icon(Icons.save),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              // fit: FlexFit.loose,
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                margin: const EdgeInsets.only(
                                    left: 5, right: 10, top: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 90, 167, 111),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.bookmark_outlined,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    Text("Saved",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: InkWell(
                  onTap: () => Get.to(() => SettingPage()),
                  child: Container(
                    alignment: Alignment.center,
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 183, 114, 58),
                    ),
                    child: Text(
                      "Settings",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
