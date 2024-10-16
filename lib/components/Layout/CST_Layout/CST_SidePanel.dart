import 'package:flutter/material.dart';

class Sidepanel extends StatefulWidget {
  Sidepanel({
    super.key,
    required this.sections,
    required this.currentSideIndex,
    required List<String> hfat1list,
  });

  final List<Section> sections;
  int currentSideIndex;

  @override
  State<Sidepanel> createState() => _SidepanelState();
}

class Section {
  final String title;
  final List<String> subsections;

  Section({required this.title, required this.subsections});
}

class _SidepanelState extends State<Sidepanel> {
  int? selectedSectionIndex;

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("hello"),
          Expanded(
            child: ListView.builder(
              itemCount: widget.sections.length,
              itemBuilder: (context, sectionIndex) {
                final section = widget.sections[sectionIndex];
                return ExpansionTile(
                  title: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: selectedSectionIndex == sectionIndex
                          ? const Color.fromRGBO(21, 34, 102, 1)
                          : null,
                    ),
                    child: Text(
                      section.title,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins",
                        color: selectedSectionIndex == sectionIndex
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                  onExpansionChanged: (expanded) {
                    setState(() {
                      selectedSectionIndex = expanded ? sectionIndex : null;
                    });
                  },
                  children: section.subsections.map((subsection) {
                    return ListTile(
                      title: Text(subsection),
                      onTap: () {
                        setState(() {
                          widget.currentSideIndex =
                              sectionIndex; // Or any logic for subsection
                        });
                      },
                    );
                  }).toList(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
