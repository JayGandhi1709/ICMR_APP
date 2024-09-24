class TableRowModel {
  bool isChecked;
  String? name;
  String? selectedOption;
  String? selectedOption1;
  String? selectedOption2;
  bool textField;

  TableRowModel({
    this.isChecked = false,
    required this.name,
    this.selectedOption,
    this.selectedOption1,
    this.selectedOption2,
    this.textField = false,
  });
}