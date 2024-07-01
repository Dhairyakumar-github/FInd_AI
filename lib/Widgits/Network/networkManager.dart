import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:project/utils/loder.dart';

class NetworkManager extends GetxController {
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;
  final Rx<ConnectivityResult> _connectivityState = ConnectivityResult.none.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

// update the connectivity status based on changes in connectivity and show a relevent popup for the internal connectivity
  Future<void> _updateConnectionStatus(List<ConnectivityResult> result) async {
    if (_connectivityState.value == ConnectivityResult.mobile) {
    } else if (_connectivityState.value == ConnectivityResult.none) {
      Loader.WarningSnakBar(title: "No internet connectivity");
    } else {}
  }

// check the connectivity status
  Future<bool> isConnected() async {
    try {
      final result = await _connectivity.checkConnectivity();
      if (result == ConnectivityResult.none) {
        return false;
      } else {
        return true;
      }
    } on PlatformException catch (_) {
      return false;
    }
  }

  // Dispose or close the activity connectivity stream
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    _connectivitySubscription.cancel();
  }
}
