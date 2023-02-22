import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../helpers/ApiHandler.dart';
import '../helpers/Error_Handler.dart';
import '../model/Profile.dart';
import '../resources/UrlResources.dart';

class ProfileProvider with ChangeNotifier {
  Profile? obj;
  profileadd(context) async
  {
    try {
      await ApiHandler.get(UrlResources. URL).then((json) async {
        obj = Profile.fromJson(json["userdata"]);
        json = jsonEncode(obj);
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString("alluser", json);
      });
    }
    on ErrorHandler catch (e) {
      if (e.message == "Internet Connection Failure") {
        print("Error");
      }
    }
  }
}