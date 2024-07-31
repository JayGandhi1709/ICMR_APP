import 'package:flutter/material.dart';
import 'package:icmr/components/models/checkbox_option.dart';
import 'package:icmr/components/models/question.dart';
import 'package:icmr/components/models/radio_option.dart';
import 'package:icmr/pages/homePage/my_form.dart';
import 'package:icmr/utils/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

  final List<Question> que = [
    Question(
      type: 'text',
      question: "1A.1 : Assessor's Name",
      value: TextEditingController(),
    ),
    Question(
      type: 'text',
      question: "1A.2 : Date",
      value: TextEditingController(text: DateTime.now().toString()),
    ),
    Question(
      type: 'radio',
      question: '1A.3 : Code',
      options: <RadioOption>[
        RadioOption(label: "GJBRC_DH"),
        RadioOption(label: "ORPUR_DH"),
        RadioOption(label: "MPBHS_DH"),
        RadioOption(label: "PBLDH_DH"),
        RadioOption(label: "PYPDY_DH"),
      ],
      value: '',
    ),
    Question(
      type: 'text',
      question: "1A.4 : Block Name",
      value: TextEditingController(),
    ),
    Question(
      type: 'text',
      question: "1A.5 : Healthcare Facility Name",
      value: TextEditingController(),
    ),
    Question(
      type: 'text',
      question: "1A.6 : Healthcare Facility Address",
      value: TextEditingController(),
    ),
    Question(
      type: 'text',
      question: "1A.7 : Name of the hospital Superintendent:",
      value: TextEditingController(),
    ),
    Question(
      type: 'text',
      question: "1A.8 : Contact Number of the hospital Superintendent:",
      value: TextEditingController(),
    ),
    Question(
      type: 'text',
      question: "1A.9 : Email ID:",
      value: TextEditingController(),
    ),
    Question(
      type: 'text',
      question: "1A.10 : Location:",
      value: TextEditingController(),
    ),
    Question(
      type: 'radio',
      question: '1A.11 : Type of Health Care facility',
      options: <RadioOption>[
        RadioOption(label: "District Hospital (DH)"),
        RadioOption(label: "Tertiary care center", isOther: true),
      ],
      value: '',
    ),
  ];

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
              MyForm(
                  title: "1A. Health Facility Information",
                  formKey: _formKey,
                  questions: que),
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
                      ...que.map((question) {
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
        //   child: Form(
        //     key: _formKey,
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: <Widget>[
        //         // write a code for radio button [o1,o2,o3]
        //         CustomRadioFormField(
        //           title: 'Select your favorite fruits:',
        //           subtitle: 'Select your favorite fruits:',
        //           options: _options,
        //           controller: _selectedRadioOptions,
        //           onSaved: (value) {
        //             setState(() {
        //               _selectedRadioOptions = value!;
        //             });
        //           },
        //           onChanged: (String value) {
        //             setState(() {
        //               // _selectedOptions = Option.getSelectedOptions(value);
        //               _selectedRadioOptions = value;
        //             });
        //           },
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: CustomTextFormField(
        //             title: 'question',
        //             controller: _controller,
        //             // onChanged: (value) {
        //             //   setState(() {
        //             //     _controller.text = value;
        //             //   });
        //             // },
        //           ),
        //         ),

        //         _selectedRadioOptions == "Option 1"
        //             ? CustomCheckBoxFormField(
        //                 title: 'Select your favorite fruits:',
        //                 options: _options1,
        //                 controller: _selectedOptions,
        //                 onSaved: (value) {
        //                   print("Comming");
        //                   setState(() {
        //                     _selectedOptions =
        //                         CheckBoxOption.getSelectedOptions(value!);
        //                   });
        //                 },
        //                 onChanged: (value) {
        //                   print("Comming");
        //                 },
        //                 validator: (value) {
        //                   print("Comming");
        //                 },
        //               )
        //             : const SizedBox(),
        //         const SizedBox(height: 20),
        //         ElevatedButton(
        //           onPressed: () {
        //             if (_formKey.currentState!.validate()) {
        //               _formKey.currentState!.save();
        //               ScaffoldMessenger.of(context).showSnackBar(
        //                 const SnackBar(content: Text('Form Submitted')),
        //               );
        //             }
        //           },
        //           child: const Text('Submit'),
        //         ),
        //       ],
        //     ),
        //   ),
      ),
    );
  }
}
