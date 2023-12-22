import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'controller.dart';

class CheckboxScreen extends StatelessWidget {
  final CheckboxController checkboxController = Get.put(CheckboxController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox Example'),
      ),
      body: Column(
        children: [
          Obx(() => CheckboxListTile(
            title: Text('Checkbox 1'),
            value: checkboxController.isCheckbox1Checked.value,
            onChanged: (value) {
              checkboxController.isCheckbox1Checked.value = value!;
              print("Selected: $value");
            },
          )),
          Obx(() => CheckboxListTile(
            title: Text('Checkbox 2'),
            value: checkboxController.isCheckbox2Checked.value,
            onChanged: (value) {
              checkboxController.isCheckbox2Checked.value = value!;
              print("Selected: $value");
            },
          )),
        ],
      ),
    );
  }
}
