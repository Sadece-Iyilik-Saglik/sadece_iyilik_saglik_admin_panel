import '../const/enum/question_enum.dart';

class Question {
  late final String content;
  final QuestionType questionType;
  final List<String> options;
  final int trueOptionIndex;
  Question({
    required this.content,
    required this.questionType,
    required this.options,
    required this.trueOptionIndex,
  });
}
