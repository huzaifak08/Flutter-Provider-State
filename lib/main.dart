import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/provider/count_provider.dart';
import 'package:provider_state/provider/exampleOne_provider.dart';
import 'package:provider_state/provider/favourite_provider.dart';
import 'package:provider_state/provider/theme_provider.dart';
import 'package:provider_state/screens/counter_example.dart';
import 'package:provider_state/screens/dark_theme.dart';
import 'package:provider_state/screens/example_one.dart';
import 'package:provider_state/screens/favourite/favourite_screen.dart';
import 'package:provider_state/screens/value_notify_listener.dart';
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
        ChangeNotifierProvider(create: (_) => FavouriteProvider()),
        ChangeNotifierProvider(create: (_) => ThemeChangerProvider()),
      ],

      // Must use Builder for Theme Changing:
      child: Builder(
        builder: (BuildContext context) {
          // Theme Changer Provider:
          final themeChanger = Provider.of<ThemeChangerProvider>(context);
          return MaterialApp(
            title: 'Flutter Demo',

            // themeMode for changing theme:
            themeMode: themeChanger.themeMode,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),

            // Dark Theme:
            darkTheme: ThemeData(
              brightness: Brightness.dark,

              // Change anything according to need.
              primarySwatch: Colors.amber,
              iconTheme: IconThemeData(color: Colors.red),
              appBarTheme: AppBarTheme(backgroundColor: Colors.teal),
            ),

            home: NotifyListenerScren(),
          );
        },
      ),
    );
  }
}
