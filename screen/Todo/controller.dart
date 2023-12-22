import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class TodoController extends GetxController {
  final todos = <String>[].obs;// string List create
  final textController = TextEditingController();


  void addTodo() {
    if (textController.text.isNotEmpty) {
      todos.add(textController.text);
      textController.clear();// data clear

    }
  }
  void editTodo(int index, String newValue) {
    todos[index] = newValue;
    update();
  }
  void removeTodo(int index) {
    todos.removeAt(index);//data delete
  }
}