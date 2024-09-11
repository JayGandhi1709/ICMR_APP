import 'package:flutter/material.dart';

class Sidepanel extends StatefulWidget {
  const Sidepanel({super.key});

  @override
  State<Sidepanel> createState() => _SidepanelState();
}

class _SidepanelState extends State<Sidepanel> {
  int selectedTile = 0;

  List<String> list = [
    "List 1",
    "List 2",
    "List 3",
    "List 4",
    "List 5",
    "List 6",
    "List 7",
  ];

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
        itemCount: list.length,
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
                list[index],
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
