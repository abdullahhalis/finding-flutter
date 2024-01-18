import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<Widget> widgets = [];
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Page"),
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  widgets.removeLast();
                  counter--;
                });
              },
              child: const Text("Decrease data"),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    widgets.add(Text(
                      "Data ke $counter",
                      style: const TextStyle(fontSize: 30),
                    ));
                    counter++;
                  });
                },
                child: const Text("Increase Data"))
          ]),
          Column(
            children: widgets,
          )
        ],
      ),
    );
  }
}
