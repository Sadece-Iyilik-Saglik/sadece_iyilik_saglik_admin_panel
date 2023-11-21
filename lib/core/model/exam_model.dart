import 'package:sadece_iyilik_saglik_admin_panel/core/model/question_model.dart';

class Exam {
  final String name;
  final List<Question> questions;
  Exam({
    required this.name,
    required this.questions,
  });
}
