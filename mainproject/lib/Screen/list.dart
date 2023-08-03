import 'package:flutter/material.dart';
import 'package:crashcourse2/Screen/tasklist.dart';


class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return MaterialApp(
      home: Scaffold(
        body: TaskList(),
      ),
    );
  }
}

