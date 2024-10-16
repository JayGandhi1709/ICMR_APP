import 'package:flutter/material.dart';
import 'CST_SidePanel.dart';
import 'package:icmr/components/custom_table.dart';
import 'package:icmr/utils/custom_app_bar.dart';

import '../../custom_checkbox_form_field.dart';
import '../../custom_date.dart';
import '../../custom_radio_form_field.dart';
import '../../custome_text_form_field.dart';
import '../../models/checkbox_option.dart';
import '../../models/question.dart';
import '../../models/radio_option.dart';

class CstFormsLayout extends StatefulWidget {
  final String heading;
  final String title;
  final String? subtitle;
  final GlobalKey<FormState> formKey;
  final List<Question> questions;
  final List<String> sidePanelList;
  final int currentSideIndex;
  final Function() onPrevious;
  final Function() onNext;
  final String? prevText;
  final String nextText;

  const CstFormsLayout({
    super.key,
    required this.heading,
    required this.title,
    this.subtitle,
    required this.formKey,
    required this.questions,
    required this.sidePanelList,
    required this.onPrevious,
    required this.onNext,
    this.prevText = "Previous",
    this.nextText = "Save & Next",
    required this.currentSideIndex,
  });

  @override
  State<CstFormsLayout> createState() => _CstFormsLayoutState();
}

class _CstFormsLayoutState extends State<CstFormsLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              widget.heading,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.016,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: "Poppins",
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Sidepanel(
                      currentSideIndex: widget.currentSideIndex,
                      hfat1list: widget.sidePanelList,
                      sections: [
                        Section(
                            title: "Section 1",
                            subsections: ["Subsection 1.1", "Subsection 1.2"]),
                        Section(
                            title: "Section 2",
                            subsections: ["Subsection 2.1", "Subsection 2.2"]),
                        // Add more sections and subsections as needed
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Expanded(
                    flex: 7,
                    child: Container(
                      margin: const EdgeInsets.only(right: 20),
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
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 20),
                            // height: MediaQuery.of(context).size.height * 0.066,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(21, 34, 102, 1),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  widget.title,
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.015,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  widget.subtitle!,
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.009,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Form(
                              // key: widget.formKey,
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 24,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 20),
                                      ...widget.questions.map((question) {
                                        return Visibility(
                                          visible: question.visible,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                question.question,
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(height: 30),
                                              if (question.subtitle != null)
                                                Text(
                                                  question.subtitle!,
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 15),
                                                child: question.type == "text"
                                                    ? CustomTextFormField(
                                                        title:
                                                            question.question,
                                                        subtitle:
                                                            question.subtitle,
                                                        controller:
                                                            question.value,
                                                        validator:
                                                            question.validator,
                                                        inputformatters: question
                                                            .inputformatters,
                                                      )
                                                    : question.type ==
                                                            'checkbox'
                                                        ? CustomCheckBoxFormField(
                                                            title: question
                                                                .question,
                                                            subtitle: question
                                                                .subtitle,
                                                            options: question
                                                                        .options
                                                                    is List<
                                                                        CheckBoxOption>
                                                                ? question
                                                                        .options
                                                                    as List<
                                                                        CheckBoxOption>
                                                                : [],
                                                            controller:
                                                                question.value,
                                                          )
                                                        : question.type ==
                                                                'radio'
                                                            ? CustomRadioFormField(
                                                                title: question
                                                                    .question,
                                                                subtitle: question
                                                                    .subtitle,
                                                                options: question
                                                                            .options
                                                                        is List<
                                                                            RadioOption>
                                                                    ? question
                                                                            .options
                                                                        as List<
                                                                            RadioOption>
                                                                    : [],
                                                                onChanged:
                                                                    (value) {
                                                                  question.value =
                                                                      value;
                                                                },
                                                                controller:
                                                                    question
                                                                        .value,
                                                              )
                                                            : question.type ==
                                                                    "date"
                                                                ? CustomDate(
                                                                    title: question
                                                                        .question)
                                                                : question.type ==
                                                                        "table"
                                                                    ? CustomTable(
                                                                        headers:
                                                                            question.tableHeaders!,
                                                                        rowData:
                                                                            question.tableRows!,
                                                                        width: const [
                                                                          0.3,
                                                                          0.2,
                                                                          0.2,
                                                                          0.2,
                                                                          0.2
                                                                        ],
                                                                      )
                                                                    : const SizedBox
                                                                        .shrink(),
                                              ),
                                            ],
                                          ),
                                        );
                                      }),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                if (widget.prevText != null)
                                  TextButton(
                                    onPressed: widget.onPrevious,
                                    child: Text(
                                      widget.prevText ?? "",
                                    ),
                                  ),
                                ElevatedButton(
                                  onPressed: widget.onNext,
                                  style: const ButtonStyle(
                                    backgroundColor: WidgetStatePropertyAll(
                                      Color.fromRGBO(
                                        21,
                                        34,
                                        102,
                                        1,
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    widget.nextText,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
