class CheckBoxOption {
  final String label;
  final bool isOther;
  bool isSelected;
  String? error;
  final bool isOtherDate;
  String value;

  CheckBoxOption({
    required this.label,
    this.isOther = false,
    this.isSelected = false,
    this.error,
    this.isOtherDate = false,
    this.value = "",
  });

  // i want method that return the value of the selected option
  static List<String> getSelectedOptions(List<CheckBoxOption> options) {
    List<String> selectedOptions = [];
    for (var option in options) {
      if (option.isSelected) {
        selectedOptions.add(option.value);
      } else {
        selectedOptions.add("");
      }
    }

    return selectedOptions;
  }

  // i want a method that validates the options
  static bool validateCheckBoxOptions(List<CheckBoxOption> options) {
    return options.any((option) => option.isSelected);
  }
}
