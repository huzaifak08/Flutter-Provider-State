import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/provider/exampleOne_provider.dart';

class ExampleOne extends StatefulWidget {
  const ExampleOne({super.key});

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  // double value = 1.0;
  @override
  Widget build(BuildContext context) {
    print('build');
    // Provider:
    // final provider = Provider.of<ExampleOneProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Example One Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Consumer Widget

          Consumer<ExampleOneProvider>(
            builder: (context, value, child) {
              return Slider(
                min: 0,
                max: 1,
                // value: value,
                value: value.value,
                onChanged: (val) {
                  // value = val;
                  // setState(() {});

                  value.setValue(val);
                },
              );
            },
          ),

          // Consumer:
          Consumer<ExampleOneProvider>(
            builder: (context, value, child) {
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.green.withOpacity(value.value),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.red.withOpacity(value.value),
                    ),
                  ),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
