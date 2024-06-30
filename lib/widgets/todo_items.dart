import 'package:flutter/material.dart';
import 'package:app1/widgets/todo.dart';

class TodoItems extends StatelessWidget {
  final Todo todo;

  TodoItems({required this.todo});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 50),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 248, 244, 244),
              blurRadius: 10,
              offset: Offset(0, 5),
            )
          ],
        ),
        child: ListTile(
          onTap: () {
            print('Tapped');
          },
          leading: IconButton(
            icon: const Icon(Icons.rectangle_outlined),
            onPressed: () {
              bool check = true;

              if (check == true) {
                check = false;
              }
              print('tapped');
            },
          ),
          title: Text(todo.title ?? '', style: TextStyle(fontSize: 20)),
          trailing: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              print('Deleted');
            },
          ),
        ));
  }
}
