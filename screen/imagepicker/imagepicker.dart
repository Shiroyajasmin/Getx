import 'package:demo_getx/screen/imagepicker/Controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class imagepicker extends StatelessWidget {
  final ImagePickerController imageController = Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Getx Image Picker Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() {
                if (imageController.selectedImage.value == null) {
                  return Text('No image selected');
                }
                return Image.file(imageController.selectedImage.value!);
              }),
              ElevatedButton(
                onPressed: () {
                  imageController.pickImage();
                },
                child: Text('Pick Image'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}