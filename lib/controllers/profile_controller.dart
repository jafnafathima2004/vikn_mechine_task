import 'package:flutter/material.dart';
import 'package:vikn_mechine_task/services/profile_service.dart';

class ProfileController extends ChangeNotifier {
  bool isLoading = true;

  Map<String, dynamic>? profileData;

  Future<void> fetchProfile() async {
    final response = await ProfileService().getUserProfile();

    print("PROFILE RESPONSE IN CONTROLLER: $response");

    if (response["success"] == 6000) {
      profileData = response["data"];
    }

    isLoading = false;
    notifyListeners();
  }
}
