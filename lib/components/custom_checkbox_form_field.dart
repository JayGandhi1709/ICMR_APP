import 'package:flutter/material.dart';
import 'package:icmr/components/models/checkbox_option.dart';

class CustomCheckBoxFormField extends FormField<List<CheckBoxOption>> {
  CustomCheckBoxFormField({
    super.key,
    required String title,
    String? subtitle,
    required List<CheckBoxOption> options,
    super.onSaved,
    FormFieldValidator<List<CheckBoxOption>>? validator,
    required List<String> controller,
    this.onChanged,
    bool autovalidate = false,
  }) : super(
          initialValue: options,
          validator: validator ?? checkBoxValidator,
          autovalidateMode: autovalidate
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          builder: (FormFieldState<List<CheckBoxOption>> state) {
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
                ...state.value!.map((option) {
                  return Column(
                    children: [
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text(option.label),
                        value: option.isSelected,
                        onChanged: (value) {
                          state.didChange(state.value!
                            ..[state.value!.indexOf(option)].isSelected =
                                value ?? false
                            ..[state.value!.indexOf(option)].value =
                                value! ? option.label : "");

                          onChanged?.call(state.value!);
                          // Update the controller with the selected options
                          controller.clear();
                          controller.addAll(
                            CheckBoxOption.getSelectedOptions(state.value!),
                          );
                        },
                      ),
                      if (option.isOther && option.isSelected)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: TextFormField(
                            // initialValue: option.value,
                            decoration: InputDecoration(
                              labelText: 'Please specify',
                              errorText: option.error,
                            ),
                            onChanged: (value) {
                              state.didChange(state.value!
                                ..[state.value!.indexOf(option)].value =
                                    "${option.label} : $value");

                              onChanged?.call(state.value!);
                              controller.clear();
                              controller.addAll(
                                CheckBoxOption.getSelectedOptions(state.value!),
                              );
                            },
                            validator: (value) {
                              if (option.isOther &&
                                  option.isSelected &&
                                  value!.isEmpty) {
                                option.error = 'Please specify';
                                return 'Please specify the other option';
                              }
                              return null;
                            },
                          ),
                        ),
                    ],
                  );
                }),
                // ...state.value!.map((option) {
                //   return Text(option.value);
                // }),
              ],
            );
          },
        );

  final ValueChanged<List<CheckBoxOption>>? onChanged;
}

String? checkBoxValidator(List<CheckBoxOption>? options) {
  if (options!.every((option) => !option.isSelected)) {
    return 'Please select at least one option';
  }
  // for (var option in value) {
  //   if (option.isOther && option.isSelected && option.value.isEmpty) {
  //     option.error = 'Please specify';
  //     return 'Please specify the other option';
  //   } else {
  //     option.error = null;
  //   }
  // }
  return null;
}
