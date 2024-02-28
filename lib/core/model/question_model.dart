class Question {
  late final String content;
  final List<String> options;
  final int? trueOptionIndex;
  Question({
    required this.content,
    required this.options,
    required this.trueOptionIndex,
  });
}
