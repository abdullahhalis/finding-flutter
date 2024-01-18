import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Flutter"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
            margin: const EdgeInsets.only(top: 10, bottom: 10),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
            margin: const EdgeInsets.only(top: 10, bottom: 10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.cyan,
              ),
              SizedBox(
                  width: 100,
                  height: 100,
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://avatars.githubusercontent.com/u/132813820?s=400&u=ab52074ac194b3c68ddd55cc074d285e952c9852&v=4")),
                        shape: BoxShape.circle),
                  )),
              Container(
                width: 100,
                height: 100,
                color: Colors.cyanAccent,
              ),
            ],
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
            margin: const EdgeInsets.only(top: 10, bottom: 10),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blueAccent,
            margin: const EdgeInsets.only(top: 10, bottom: 10),
          ),
        ],
      ),
    );
  }
}
