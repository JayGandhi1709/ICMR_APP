class Question {
  final String type;
  final String question;
  final List<dynamic>? options;
  dynamic value;

  Question({
    required this.type,
    required this.question,
    this.options,
    required this.value,
  });
}
