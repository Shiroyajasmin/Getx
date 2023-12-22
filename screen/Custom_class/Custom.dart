import 'package:demo_getx/screen/Custom_class/Movie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Custom extends StatelessWidget {

  var movie =Movie();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Obx change value"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text("${movie.name}",style: TextStyle(fontSize: 30),)),

              ElevatedButton(onPressed: () {
              movie.name.value="Vivek";
              }, child: Text("Change")),
            ],
          ),
        ),
      ),
    );
  }
}




