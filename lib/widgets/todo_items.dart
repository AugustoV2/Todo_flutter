import 'package:flutter/material.dart';

class TodoItems extends StatelessWidget {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(255, 142, 136, 136),

        //margin: const EdgeInsets.only(top: 50),
        child: ListTile(
          onTap: () {
            print('Tapped');
          },
          leading: IconButton(
            icon: const Icon(Icons.check_sharp),
            onPressed: () {
              print('Deleted');
            },
          ),
          title: const Text('PAddi cheak', style: TextStyle(fontSize: 20)),
          trailing: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              print('Deleted');
            },
          ),
        ));
  }
}
