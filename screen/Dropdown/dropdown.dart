import 'package:demo_getx/screen/Dropdown/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DropdownPage extends StatelessWidget {
  final DropdownController dropdownController = Get.put(DropdownController());

  final List<String> options = ["Option 1", "Option 2", "Option 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown with GetX"),
      ),
      body: Center(
        child: Obx(() {
          return DropdownButton<String>(
            value: dropdownController.selectedValue.value,
            items: options.map((String option) {
              return DropdownMenuItem<String>(
                value: option,
                child: Text(option),
              );
            }).toList(),
            onChanged: (String? newValue) {
              dropdownController.updateSelectedValue(newValue ?? '');
              print("Selected value: ${dropdownController.selectedValue.value}");
            },
          );
        }),
      ),
    );
  }
}
