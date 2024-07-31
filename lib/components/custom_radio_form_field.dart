import 'package:flutter/material.dart';
import 'package:icmr/components/models/radio_option.dart';

class CustomRadioFormField extends FormField<String> {
  CustomRadioFormField({
    super.key,
    required String title,
    String? subtitle,
    required List<RadioOption> options,
    super.onSaved,
    // super.validator,
    FormFieldValidator<String>? validator,
    required String? controller,
    this.onChanged,
    bool autovalidate = false,
  }) : super(
          initialValue: controller,
          validator: validator ?? radioValidator,
          autovalidateMode: autovalidate
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          builder: (FormFieldState<String> state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                subtitle != null ? Text(subtitle) : const SizedBox(),
                if (state.hasError)
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      state.errorText!,
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
                ...options.map((option) {
                  return Column(
                    children: [
                      RadioListTile(
                        title: Text(option.label),
                        value: option.label,
                        groupValue: state.value?.split(" : ").first,
                        // groupValue: state.value!
                        //     .firstWhere((element) => element.isSelected),
                        onChanged: (value) {
                          state.didChange(value);
                          onChanged?.call(state.value!);
                        },
                      ),
                      if (option.isOther &&
                          state.value?.split(" : ").first == option.label)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: TextFormField(
                            // initialValue: option.value,
                            decoration: const InputDecoration(
                              labelText: 'Please specify',
                              // errorText: option.error,
                            ),
                            onChanged: (value) {
                              // state.didChange(state.value = "${option.label} : $value");
                              var newValue = "${option.label} : $value";
                              state.didChange(newValue);
                              onChanged?.call(state.value!);
                              controller = state.value;
                              debugPrint(controller);
                            },
                            validator: (value) {
                              if (option.isOther &&
                                  controller == option.label &&
                                  value!.isEmpty) {
                                // option.error = 'Please specify';
                                return 'Please specify the other option';
                              }
                              return null;
                            },
                          ),
                        ),
                    ],
                  );
                }),
              ],
            );
          },
        );

  final ValueChanged<String>? onChanged;
}

String? radioValidator(String? controller) {
  if (controller == null || controller.isEmpty) {
    return 'Please select an option';
  }
  return null;
}
