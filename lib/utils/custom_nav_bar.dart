import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
  CustomNavBar({
    super.key,
    this.selectedIndex = 0,
    required this.onTap,
  });
  int selectedIndex;
  // void Function(int index)? onTap;
  // i want onTap to be a function that takes an integer and returns void
  Function(int index) onTap;

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  List navItem = [
    "Home",
    "About Project",
    "Project",
    "Research Team",
    "What's New"
  ];

  int hoverdedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: navItem.asMap().entries.map<Widget>((entry) {
            int index = entry.key;
            String item = entry.value;
            return Row(
              children: [
                InkWell(
                  hoverColor: Colors.transparent,
                  onHover: (value) {
                    setState(() {
                      if (value) {
                        hoverdedIndex = index;
                      } else {
                        hoverdedIndex = -1;
                      }
                    });
                  },
                  onTap: () {
                    widget.onTap(index);
                  },
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: index == widget.selectedIndex ||
                                  index == hoverdedIndex
                              ? Colors.black
                              : Colors.transparent,
                          width: 2,
                        ),
                      ),
                    ),
                    child: Text(
                      item,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: MediaQuery.of(context).size.width * 0.014,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            );
          }).toList(),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            print("object");
          },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.09,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(21, 34, 102, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  30,
                ),
              ),
            ),
            child: Center(
              child: Text(
                "Sign In",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width * 0.014,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
