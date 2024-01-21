import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(title: const Text("container study")),
        body: const CustomContainer()),
  ));
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
          color: Color(0xFF16CE4A),
          border:
              Border.all(color: Colors.red, width: 5, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
                color: Colors.red.withOpacity(0.3),
                offset: Offset(6, 6),
                blurRadius: 10,
                spreadRadius: 10),
            BoxShadow(
                color: Colors.blue.withOpacity(0.3),
                offset: Offset(-6, -6),
                blurRadius: 10,
                spreadRadius: 10)
          ]),
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Center(
        child: Container(color: Colors.yellow, child: Text("hello container")),
      ),
    );
  }
}
