import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class CustomTextFormField extends FormField<String> {
  CustomTextFormField({
    super.key,
    required String title,
    String? subtitle,
    super.onSaved,
    TextInputType? keyboardType,
    List<TextInputFormatter>? inputformatters,
    FormFieldValidator<String>? validator,
    required TextEditingController controller,
    ValueChanged<String>? onChanged,
    bool autovalidate = false,
  }) : super(
          initialValue: controller.text,
          validator: validator ?? textValidator(controller.text),
          autovalidateMode: autovalidate
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          builder: (FormFieldState<String> field) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                subtitle != null ? Text(subtitle) : const SizedBox(),
                if (field.hasError)
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      field.errorText!,
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: controller,
                  keyboardType: keyboardType,
                  inputFormatters: inputformatters,
                  onChanged: (value) {
                    field.didChange(value);
                    onChanged?.call(value);
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  validator: validator ?? textValidator(controller.text),
                ),
              ],
            );
          },
        );
}

textValidator(String? value) {
  // if (value == null || value.isEmpty) {
  //   return 'Please enter value';
  // }
  return FormBuilderValidators.required();
  // return null;
}
