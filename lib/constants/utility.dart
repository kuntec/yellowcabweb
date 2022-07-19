import 'dart:math';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

class Utility {
  static bool isKeyboardShowing() {
    if (WidgetsBinding.instance != null) {
      return WidgetsBinding.instance!.window.viewInsets.bottom > 0;
    } else {
      return false;
    }
  }

  static closeKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  static Future<bool> checkConnectivity() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      return false;
    } else if (result == ConnectivityResult.mobile) {
      return true;
    } else if (result == ConnectivityResult.wifi) {
      return true;
    }
    return false;
  }

  static String generateOTP() {
    return "7588";
    // int min = 10000; //min and max values act as your 5 digit range
    // int max = 99999;
    // var randomizer = new Random();
    // var rNum = min + randomizer.nextInt(max - min);
    // return rNum.toString();
  }

  static bool checkValidation(String value) {
    if (value.trim() == "" || value.isEmpty) {
      return true;
    }
    return false;
  }

  static bool checkPhoneValidation(String value) {
    if (value.length != 10) {
      return true;
    }
    return false;
  }

  static String getCurrentDate() {
    final initialDate = DateTime.now();
    return "${initialDate.day}-${initialDate.month}-${initialDate.year}";
  }

  static void showToast(String msg) {
    Fluttertoast.showToast(
      msg: msg,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_LONG,
    );
  }

  static void showValidationToast(String msg) {
    Fluttertoast.showToast(
      msg: msg,
//      gravity: ToastGravity.CENTER_LEFT,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_LONG,
    );
  }

  // static launchCall(String number) async {
  //   await FlutterPhoneDirectCaller.callNumber(number);
  // }

  static String addDays(String date, int days) {
    DateTime dt = DateFormat('dd-MM-yyyy').parse(date);
    days = days - 1;
    DateTime after = dt.add(Duration(days: days));
    String afterDays = "${after.day}-${after.month}-${after.year}";
    return afterDays;
  }

  static String getTimeFormat(int time) {
    String t = time.toString();
    if (time < 10) {
      t = "0" + t;
    }
    return t;
  }

  static int getRemainingTime(String date, String time) {
    DateTime tm = DateFormat.jm().parse(time);
    DateTime dt = DateFormat('dd-MM-yyyy').parse(date);

    String mainTime = date + " " + DateFormat("HH:mm").format(tm);
    DateTime mt = DateFormat('dd-MM-yyyy HH:mm').parse(mainTime);
    final now = DateTime.now();
    // int difference = now.difference(mt).inMinutes;
    int difference = mt.difference(now).inMinutes;
    return difference;
  }
}
