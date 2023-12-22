import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'controller.dart';

class TodoListPage extends StatelessWidget {
  final TodoController todoController = Get.find<TodoController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: Obx(
            () => ListView.builder(
          itemCount: todoController.todos.length,
          itemBuilder: (context, index) {
            final textController = TextEditingController(text: todoController.todos[index]);
            return ListTile(
              title: TextField(
                controller: textController,
                decoration: InputDecoration(border: OutlineInputBorder()),
                onChanged: (newValue) {
                  todoController.editTodo(index, newValue);
                },
              ),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  todoController.removeTodo(index);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
