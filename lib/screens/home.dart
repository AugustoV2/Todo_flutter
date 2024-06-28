import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: Color.fromARGB(255, 16, 3, 3),
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
      )),
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
                      style: TextStyle(fontSize: 30),
                    ))
              ],
            ))
          ],
        ),
      ),
    );
  }
}

Widget searchBox() {
  return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 142, 136, 136),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.white),
            prefixIcon: Icon(Icons.search, color: Colors.white),
            border: InputBorder.none),
      ));
}
