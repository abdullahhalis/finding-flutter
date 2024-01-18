import 'package:flutter/material.dart';
import 'package:hello_flutter/counter_page.dart';
import 'package:hello_flutter/list_page.dart';
import 'package:hello_flutter/main_page.dart';

void main() {
  MyApp app = const MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewPage(),
    );
  }
}
