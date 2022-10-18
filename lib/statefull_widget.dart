import 'package:flutter/material.dart';

class StateFullWidget extends StatefulWidget {
  const StateFullWidget({super.key});

  @override
  State<StateFullWidget> createState() => _StateFullWidgetState();
}

class _StateFullWidgetState extends State<StateFullWidget> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    print('Widget is build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider State Management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              x.toString(),
              style: TextStyle(fontSize: 45),
            ),
            Text(DateTime.now().toString()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x++;
          print(x);
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
