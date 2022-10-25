import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/provider/count_provider.dart';
import 'package:provider_state/provider/exampleOne_provider.dart';
import 'package:provider_state/screens/counter_example.dart';
import 'package:provider_state/screens/example_one.dart';
import 'package:provider_state/statefull_widget.dart';
import 'package:provider_state/stateless_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ExampleOne(),
      ),
    );
  }
}
