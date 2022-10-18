import 'package:flutter/material.dart';
import 'package:provider_state/statefull_widget.dart';
import 'package:provider_state/stateless_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StateFullWidget(),
    );
  }
}
