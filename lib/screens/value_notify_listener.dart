import 'package:flutter/material.dart';

class NotifyListenerScren extends StatelessWidget {
  NotifyListenerScren({super.key});

  // initializing Notify Listener:

  // Example 1;
  ValueNotifier<int> _counter = ValueNotifier<int>(0);

  // Example 2:
  ValueNotifier<bool> toggle = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Notify Listener'),
      ),
      body: Center(
        // Value Listenable Builder:
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Example 1:
            ValueListenableBuilder(
              valueListenable: _counter,
              builder: (context, value, child) {
                return Text(
                  _counter.value.toString(),
                  style: TextStyle(fontSize: 30),
                );
              },
            ),

            // Example 2:
            ValueListenableBuilder(
              valueListenable: toggle,
              builder: (context, value, child) {
                return TextField(
                  // Value is the initial value that we provide at the initialization time.
                  obscureText: toggle.value,
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                      child: Icon(toggle.value
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined),
                      onTap: () {
                        toggle.value = !toggle.value;
                      },
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Value is the initial value that we provide at the initialization time.
          _counter.value++;

          print(_counter.value);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
