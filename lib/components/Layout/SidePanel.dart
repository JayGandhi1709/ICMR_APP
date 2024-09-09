import 'package:flutter/material.dart';

class Sidepanel extends StatefulWidget {
  const Sidepanel({super.key});

  @override
  State<Sidepanel> createState() => _SidepanelState();
}

class _SidepanelState extends State<Sidepanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      // backgroundColor: const Color(0xFFF2F7FF),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.8,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(242, 247, 255, 1),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              spreadRadius: 0.3,
            )
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
