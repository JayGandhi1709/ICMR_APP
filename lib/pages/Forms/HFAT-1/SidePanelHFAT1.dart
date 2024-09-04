import 'package:flutter/material.dart';


class Sidepanelhfat1 extends StatefulWidget {
  const Sidepanelhfat1({super.key});

  @override
  State<Sidepanelhfat1> createState() => _Sidepanelhfat1State();
}

class _Sidepanelhfat1State extends State<Sidepanelhfat1> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF2F7FF),
      body: Column(
        children: [
          Center(child: Text("Text")),
          Text("Text"),
          Text("Text"),
          Text("Text"),
          Text("Text"),
          Text("Text"),
          Text("Text"),
        ],
      ),
    );
  }
}
