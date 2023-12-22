import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'controller.dart';

class RadioButtonsDemo extends StatelessWidget {
  final controller = Get.put(RadioButtonsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Buttons Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return RadioListTile(
                title: Text('Option 1'),
                value: "Option 1",

                groupValue: controller.selectedValue.value,
                onChanged: (value) {
                  controller.selectedValue.value = value!;
                  print("Selected: $value");
                },
              );
            }),
            Obx(() {
              return RadioListTile(
                title: Text('Option 2'),
                value: "Option 2",
                groupValue: controller.selectedValue.value,
                onChanged: (value) {
                  controller.selectedValue.value = value!;
                  print("Selected: $value");
                },

              );
            }),
          ],
        ),
      ),
    );
  }
}