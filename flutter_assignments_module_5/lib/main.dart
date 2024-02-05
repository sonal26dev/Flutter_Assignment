import 'package:flutter/material.dart';
import 'package:flutter_assignments_module_5/screen/task_list_screen.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(colorScheme: const ColorScheme.highContrastDark()),
        debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const MyTaskListPage()
    );
  }
}
