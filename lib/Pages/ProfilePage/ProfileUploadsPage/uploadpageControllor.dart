import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class UploadPageControllor extends GetxController {
  RxString dropdownValue = "Free".obs;
  updateDropdownValue(String value) {
    dropdownValue.value = value;
    print(dropdownValue);
  }

  List<String> dropdownMenus = ["Free", "Freemium", "Paid"];
}
