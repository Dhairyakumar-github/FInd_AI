import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/controllor/controllor.dart';

class CustomTabbar extends StatelessWidget {
  CustomTabbar({super.key});
  Controllor controllor = Get.put(Controllor());
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 400,
                // Fixed height for the SingleChildScrollView
                child: ListView.builder(
                  scrollDirection: Axis
                      .horizontal, // Set the scroll direction for the ListView
                  itemCount: controllor.tabbaritems.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        controllor.currentTab.value = index;
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Obx(
                          () => AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            // width: 120, // Set width for each item
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: controllor.currentTab.value == index
                                  ? Colors.black
                                  : Color.fromARGB(255, 117, 118, 118),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 40),
                              child: Text(
                                controllor.tabbaritems[index].toString(),
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            width: 200,
            child: Expanded(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: controllor.tabbaritems2.length,
                itemBuilder: (context, index) {
                  return Obx(
                    () => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        controllor.tabbaritems2[controllor.currentTab.value]
                            .toString(),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
