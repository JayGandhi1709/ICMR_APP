import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:icmr/components/custom_checkbox_form_field.dart';
import 'package:icmr/components/custom_radio_form_field.dart';
import 'package:icmr/components/custome_text_form_field.dart';
import 'package:icmr/components/models/checkbox_option.dart';
import 'package:icmr/components/models/question.dart';
import 'package:icmr/components/models/radio_option.dart';

class MyForm extends StatelessWidget {
  const MyForm({
    super.key,
    required this.title,
    required this.questions,
    required this.formKey,
  });
  final String title;
  final GlobalKey<FormState> formKey;
  // final List<Map<String, dynamic>> questions;
  final List<Question> questions;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          ...questions.map((question) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: question.type == "text"
                  ? CustomTextFormField(
                      title: question.question,
                      controller: question.value,
                    )
                  : question.type == 'checkbox'
                      ? CustomCheckBoxFormField(
                          title: question.question,
                          options: question.options is List<CheckBoxOption>
                              ? question.options as List<CheckBoxOption>
                              : [],
                          controller: question.value,
                        )
                      : question.type == 'radio'
                          ? CustomRadioFormField(
                              title: question.question,
                              options: question.options is List<RadioOption>
                                  ? question.options as List<RadioOption>
                                  : [],
                              onChanged: (value) {
                                question.value = value;
                              },
                              controller: question.value,
                            )
                          : const SizedBox.shrink(),
            );

            // if (question.type == "text") {
            //   return CustomTextFormField(
            //     title: question.question,
            //     controller: question.value,
            //   );
            // } else if (question.type == 'checkbox') {
            //   return CustomCheckBoxFormField(
            //     title: question.question,
            //     options: question.options is List<CheckBoxOption>
            //         ? question.options as List<CheckBoxOption>
            //         : [],
            //     controller: question.value,
            //   );
            // } else if (question.type == 'radio') {
            //   return CustomRadioFormField(
            //     title: question.question,
            //     options: question.options is List<RadioOption>
            //         ? question.options as List<RadioOption>
            //         : [],
            //     onChanged: (value) {
            //       question.value = value;
            //     },
            //     controller: question.value,
            //   );
            // } else {
            //   return const SizedBox.shrink(); // or any other valid widget
            // }
          })
        ],
      ),
    );
  }
}
