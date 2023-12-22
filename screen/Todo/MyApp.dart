
import 'package:demo_getx/screen/Todo/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddTodoPage extends StatelessWidget {
  final TodoController todoController = Get.find<TodoController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DATA ADD'),
        shape: OutlineInputBorder(
          borderSide: BorderSide.none,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20))),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: todoController.textController,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.account_circle,color: Colors.black,),
                    border: OutlineInputBorder(),
                    labelText: 'Enter Name'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                todoController.addTodo();
                Get.toNamed('/todoList'); // Navigate page
              },
              child: Text('Add Todo'),
            ),
          ],
        ),
      ),
    );
  }
}
