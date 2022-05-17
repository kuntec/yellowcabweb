import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yellowcabweb/controllers/CounterController.dart';
import 'package:yellowcabweb/pages/other.dart';

class HomeScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            counterController.increment();
          },
          child: const Icon(Icons.add),
        ),
        body: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: Text('Clicks: ${counterController.counter.value}')),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(OtherScreen());
                  },
                  child: const Text("Open Other"),
                ),
              ),
            ],
          ),
        ));
  }
}
