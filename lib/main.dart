import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: Text("this is appbar"),
          centerTitle: false,
          actions: [
            IconButton(icon: Icon(Icons.home), onPressed: () {
              print("home");
            },),
            IconButton(icon: Icon(Icons.play_arrow), onPressed: () {
              print("play");
            },)
          ],
        ),
        body: TextWidget()),
  ));
}

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Text(
          "Hello Flutter",
          style: TextStyle(
            fontSize: 40,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
