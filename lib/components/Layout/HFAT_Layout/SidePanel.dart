import 'package:flutter/material.dart';

class Sidepanel extends StatefulWidget {
  Sidepanel({
    super.key,
    required this.hfat1list,
    required this.currentSideIndex,
  });

  final List<String> hfat1list;
  int currentSideIndex;

  @override
  State<Sidepanel> createState() => _SidepanelState();
}

class _SidepanelState extends State<Sidepanel> {
  List<String> list = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
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
                color: widget.currentSideIndex == index
                    ? const Color.fromRGBO(21, 34, 102, 1)
                    : null,
              ),
              child: Text(
                widget.hfat1list[index],
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins",
                  color: widget.currentSideIndex == index
                      ? Colors.white
                      : Colors.black,
                ),
              ),
            ),
            // onTap: () {
            //   log(widget.currentSideIndex);
            //   setState(() {
            //     widget.currentSideIndex = index;
            //   });
            // },
          );
        },
      ),
    );
  }
}
