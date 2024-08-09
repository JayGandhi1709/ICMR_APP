import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
  CustomNavBar({super.key, this.selectedIndex = -1});
  int selectedIndex;

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

  // int hoveredIndex = -1;
  // int selectedIndex = -1;

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
                  // onHover: (value) {
                  //   // print(value);
                  //   setState(() {
                  //     if (value) {
                  //       hoveredIndex = index;
                  //     } else {
                  //       hoveredIndex = -1;
                  //     }
                  //   });
                  // },
                  onTap: () {
                    // print(value);
                    setState(() {
                      widget.selectedIndex = index;
                    });
                  },
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,

                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          // color: Colors.black,
                          color: index == widget.selectedIndex
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
        Spacer(),
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
