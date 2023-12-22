// import 'package:demo_getx/screen/Dropdown/dropdown.dart';
// import 'package:demo_getx/screen/Todo/Listpage.dart';
// import 'package:demo_getx/screen/Todo/MyApp.dart';
// import 'package:demo_getx/screen/Todo/controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// void main() {
//   Get.put(TodoController()); // Initialize the TodoController
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Todo App',debugShowCheckedModeBanner: false,
//       initialRoute: '/addTodo', // app open page call
//       getPages: [
//         GetPage(name: '/addTodo', page: () => AddTodoPage()),
//         // app open page call
//         GetPage(name: '/todoList', page: () => TodoListPage()),
//         //second page navigation
//       ],
//     );
//   }
// }

import 'package:demo_getx/screen/imagepicker/imagepicker.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: imagepicker(),debugShowCheckedModeBanner: false,));
}











