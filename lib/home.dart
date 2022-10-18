import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider State Management'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              x.toString(),
              style: TextStyle(fontSize: 45),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x++;
          print(x);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
