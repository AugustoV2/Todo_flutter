import 'package:app1/widgets/todo_items.dart';
import 'package:flutter/material.dart';
import 'package:app1/widgets/todo.dart';

class home extends StatelessWidget {
  final todosList = Todo.todos();

  @override
  Widget build(BuildContext context) {
    String val = '';
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.menu,
              color: Color.fromARGB(255, 247, 246, 246),
              size: 30,
            ),
            Container(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/medium.png'),
              ),
            )
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            searchBox(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Text(
                      'Tasks',
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                  ),
                  for (Todo todo in todosList)
                    TodoItems(
                      todo: todo,
                    ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 10, 10, 10).withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                onChanged: (value) {
                  val = value;
                  value = val;
                },
                decoration: InputDecoration(
                  hintText: 'Add Task',
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      print(val);
                      val = '';
                    },
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget searchBox() {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.white),
          prefixIcon:
              Icon(Icons.search, color: Color.fromARGB(255, 11, 10, 10)),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
