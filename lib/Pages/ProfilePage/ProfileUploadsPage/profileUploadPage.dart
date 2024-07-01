import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/Pages/ProfilePage/ProfileUploadsPage/uploadpageControllor.dart';

class ProfileUploadPage extends StatelessWidget {
  const ProfileUploadPage({super.key});

  @override
  Widget build(BuildContext context) {
    UploadPageControllor uploadControllor = Get.put(UploadPageControllor());
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 1,
        centerTitle: true,
        title: const Text("Upload Your Ai"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: DottedBorder(
                borderType: BorderType.RRect,
                dashPattern: [9, 0, 7, 5],
                radius: const Radius.circular(12),
                padding: const EdgeInsets.all(0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 150,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.upload_rounded,
                          size: 28,
                        ),
                        Text(
                          "Upload cover Image",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Details",
                style: TextStyle(fontSize: 24),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: const TextField(
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(hintText: "Title"),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: TextFormField(
                      style: const TextStyle(fontSize: 20),
                      decoration: const InputDecoration(hintText: "Name of Ai"),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: TextFormField(
                      style: const TextStyle(fontSize: 20),
                      decoration: const InputDecoration(hintText: "Url"),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 1),
                    ),
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Obx(
                        () => DropdownButton<String>(
                          underline: const SizedBox(),
                          elevation: 6,
                          // hint: Text("Price"),
                          style: const TextStyle(
                              fontSize: 20, color: Colors.black),
                          // dropdownColor: Colors.amber,
                          isExpanded: true,
                          value:
                              uploadControllor.dropdownValue.value.toString(),
                          icon: const Icon(
                            Icons.arrow_drop_down_rounded,
                            size: 40,
                          ),
                          items: uploadControllor.dropdownMenus
                              .map<DropdownMenuItem<String>>(
                            (String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value.toString()),
                              );
                            },
                          ).toList(),
                          onChanged: (String? value) {
                            uploadControllor
                                .updateDropdownValue(value.toString());
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: TextFormField(
                      decoration: InputDecoration(hintText: "Description"),
                      maxLines: 4,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
