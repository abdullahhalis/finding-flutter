import 'package:flutter/material.dart';
import 'package:hello_flutter/list_page.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Counter Number"),
          backgroundColor: Colors.purpleAccent,
          foregroundColor: Colors.white,
        ),
        body: Stack(children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$number",
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        number++;
                      });
                    },
                    child: const Text("Add Number"))
              ],
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.9),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ListViewPage(),
                      ));
                },
                child: const Text("List Page")),
          )
        ]));
  }
}
