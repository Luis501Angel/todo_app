import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';
import 'package:todo_app/model/todo.dart';

class ToDoItem extends StatelessWidget {

  final ToDo toDo;

  const ToDoItem({Key? key, required this.toDo}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          print('Clicked on item');
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: const Icon(
          Icons.check_box,
          color: tdBlue,
        ),
        title: Text(
          toDo.text!,
          style: const TextStyle(
              fontSize: 16,
              color: tdBlack,
              decoration: TextDecoration.lineThrough),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              color: tdRed, borderRadius: BorderRadius.circular(5)),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: const Icon(Icons.delete),
            onPressed: () {
              print('Click on delete');
            },
          ),
        ),
      ),
    );
  }
}
