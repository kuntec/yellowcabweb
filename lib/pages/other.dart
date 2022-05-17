import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yellowcabweb/controllers/CounterController.dart';

class OtherScreen extends StatelessWidget {
  final CounterController _counterController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child:
                  Text("Counter: ${_counterController.counter.value} times")),
          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("Open Home"),
          ),
        ],
      ),
    );
  }
}
