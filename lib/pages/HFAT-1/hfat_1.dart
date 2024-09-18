import 'package:flutter/material.dart';
import 'package:icmr/pages/HFAT-1/my_form.dart';
import 'package:icmr/utils/custom_app_bar.dart';

import '../Forms/HFAT-1/FormB.dart';

class OLDHFAT1 extends StatefulWidget {
  const OLDHFAT1({super.key});

  @override
  State<OLDHFAT1> createState() => _OLDHFAT1State();
}

class _OLDHFAT1State extends State<OLDHFAT1> {
  final _formKey = GlobalKey<FormState>();

  // final List<RadioOption> _options = [
  //   RadioOption(label: "Option 1"),
  //   RadioOption(label: "Option 2"),
  //   RadioOption(label: "Option 3", isOther: true),
  //   RadioOption(label: "Option 4"),
  //   RadioOption(label: "Other", isOther: true),
  // ];

  // final List<CheckBoxOption> _options1 = [
  //   CheckBoxOption(label: "Option 1"),
  //   CheckBoxOption(label: "Option 2"),
  //   CheckBoxOption(label: "Option 3", isOther: true),
  //   CheckBoxOption(label: "Option 4", isOther: true),
  //   CheckBoxOption(label: "Other"),
  // ];

  // String? _selectedRadioOptions;
  // List<String> _selectedOptions = [""];

  // final TextEditingController _controller = TextEditingController();

  bool isDataSubmited = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      // appBar: AppBar(
      //   title: const Text("HFAT-1"),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              // MyForm(
              //   title: "1A. Health Facility Information",
              //   formKey: _formKey,
              //   questions: hfat1FormA,
              // ),
              MyForm(
                title: "1B. Infastructure",
                formKey: _formKey,
                questions: hfat1FormB,
              ),

              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    setState(() {
                      isDataSubmited = true;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Form Submitted')),
                    );
                  } else {
                    setState(() {
                      isDataSubmited = false;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('Please fill all the fields')),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
              const SizedBox(height: 20),
              isDataSubmited
                  ? Column(children: [
                      const SizedBox(height: 20),
                      const Text("Submitted Data"),
                      const SizedBox(height: 10),
                      ...hfat1FormB.map((question) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: question.type == "text"
                              ? Text(
                                  "${question.question} : ${question.value.text}")
                              : question.type == 'checkbox'
                                  ? Text(
                                      "${question.question} : ${question.value}")
                                  : question.type == 'radio'
                                      ? Text(
                                          "${question.question} : ${question.value}")
                                      : const SizedBox.shrink(),
                        );
                      })
                    ])
                  : const SizedBox.shrink()
            ],
          ),
        ),
      ),
    );
  }
}
