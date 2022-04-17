import 'package:flutter/material.dart';
import 'package:uni_training2/screens/grid_view.dart';
import 'package:uni_training2/screens/list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CustomGridView(),
    );
  }
}


