import 'package:flutter/material.dart';
import 'package:orenji/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Orenji E-Commerce',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange)
            .copyWith(secondary: Colors.green),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
