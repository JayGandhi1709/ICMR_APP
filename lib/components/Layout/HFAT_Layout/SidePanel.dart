import 'package:flutter/material.dart';

class Sidepanel extends StatefulWidget {
  const Sidepanel({super.key, required this.hfat1list});

  final List<String> hfat1list;

  @override
  State<Sidepanel> createState() => _SidepanelState();
}

class _SidepanelState extends State<Sidepanel> {
  int selectedTile = 0;

  List<String> list = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.76,
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
      child: ListView.builder(
        itemCount: widget.hfat1list.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                color: selectedTile == index
                    ? Color.fromRGBO(21, 34, 102, 1)
                    : null,
              ),
              child: Text(
                widget.hfat1list[index],
                style: TextStyle(
                  color: selectedTile == index ? Colors.white : Colors.black,
                ),
              ),
            ),
            onTap: () {
              print("object");
              setState(() {
                selectedTile = index;
              });
            },
          );
        },
      ),
    );
  }
}
