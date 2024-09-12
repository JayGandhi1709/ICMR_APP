import 'package:flutter/material.dart';
import 'package:icmr/pages/HFAT-1/my_form.dart';
import 'package:icmr/pages/HFAT-1/question.dart';
import 'package:icmr/utils/custom_app_bar.dart';

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

              // Table(
              //   border: TableBorder.all(
              //     width: 2
              //   ),
              //   columnWidths: const <int, TableColumnWidth>{
              //     0: FlexColumnWidth(),
              //     1: FixedColumnWidth(200),
              //     2: FixedColumnWidth(250),
              //     3: FixedColumnWidth(100),
              //     4: FixedColumnWidth(100),
              //   },
              //   children: [
              //     TableRow(
              //       children: [
              //         TableCell(
              //           child: Text('Manpower'),
              //         ),
              //         TableCell(
              //           child: Text('Number'),
              //         ),
              //         TableCell(
              //           child: Text('24/7 Availablity'),
              //         ),
              //         TableCell(
              //           child: Text('On-site Availability'),
              //         ),
              //         TableCell(
              //           child: Text('On-call Availability'),
              //         ),
              //       ],
              //     ),
              //     TableRow(
              //       children: [
              //         TableCell(
              //           child: Row(
              //             children: [
              //               Checkbox(
              //                 value: false,
              //                 onChanged: null,
              //               ),
              //               Text('Facilty/Consultant'),
              //             ],
              //           ),
              //         ),
              //         TableCell(
              //           child: CustomTextFormField(
              //             title: 'Number',
              //             controller: TextEditingController(),
              //           ),
              //         ),
              //         TableCell(
              //           child: CustomRadioFormField(
              //             title: '24/7 Availablity',
              //             options: [
              //               RadioOption(label: "Yes"),
              //               RadioOption(label: "No"),
              //             ],
              //             controller: '',
              //           ),
              //         ),
              //         TableCell(
              //           child: Text('Cell 5'),
              //         ),
              //         TableCell(
              //           child: Text('Cell 6'),
              //         ),
              //       ],
              //     ),
              //   ],
              // ),

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
