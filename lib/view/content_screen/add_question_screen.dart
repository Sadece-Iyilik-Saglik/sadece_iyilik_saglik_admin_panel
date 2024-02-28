import 'package:flutter/material.dart';
import '../../core/model/exam_model.dart';
import '../../core/model/question_model.dart';
import '../../core/viewmodel/exam_view_model.dart';

class CreateExamScreen extends StatefulWidget {
  const CreateExamScreen({Key? key}) : super(key: key);

  @override
  _CreateExamScreenState createState() => _CreateExamScreenState();
}

class _CreateExamScreenState extends State<CreateExamScreen> {
  late String questionName;
  late String questionDescription;
  List<Question> questions = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sınav Oluşturma Ekranı'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(labelText: 'Sınav Adı'),
              onChanged: (text) {
                setState(() {
                  questionName = text;
                });
              },
            ),
            const SizedBox(height: 12.0),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Sınav İçeriği',
              ),
              onChanged: (text) {
                setState(() {
                  questionDescription = text;
                });
              },
            ),
            const SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF685BFF),
                    textStyle: const TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    if (questionName.isEmpty ||
                        questionDescription.isEmpty ||
                        questions.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                              'Lütfen sınav adı, içeriği ve soruları ekleyin.'),
                        ),
                      );
                    } else {
                      Exam exam = Exam(
                        name: questionName,
                        subtitle: questionDescription,
                        questions: questions,
                      );
                      ExamViewModel.addExam(exam);
                      Navigator.pop(context);
                    }
                  },
                  child: const Text(
                    'Sınavı Kaydet',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFED8C42),
                    textStyle: const TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddQuestionScreen(
                          onQuestionAdded: (question) {
                            setState(() {
                              questions.add(question);
                            });
                          },
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    'Soru Ekle',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12.0),
            Expanded(
              child: questions.isEmpty
                  ? const Center(
                      child: Text(
                        'Henüz soru eklenmedi.',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    )
                  : ListView.builder(
                      itemCount: questions.length,
                      itemBuilder: (context, index) {
                        return questionCard(questions[index]);
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget questionCard(Question question) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Soru: ${question.content}',
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            const SizedBox(height: 8),
            const Text(
              'Şıklar:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: question.options
                  .map((option) => Text(
                        option,
                        style: TextStyle(
                          color: question.options.indexOf(option) ==
                                  question.trueOptionIndex
                              ? Colors.green
                              : Colors.black,
                          fontWeight: question.options.indexOf(option) ==
                                  question.trueOptionIndex
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ))
                  .toList(),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  questions.remove(question);
                });
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
              child: const Text('Soruyu Kaldır'),
            ),
          ],
        ),
      ),
    );
  }
}

class AddQuestionScreen extends StatefulWidget {
  final Function(Question) onQuestionAdded;

  const AddQuestionScreen({Key? key, required this.onQuestionAdded})
      : super(key: key);

  @override
  _AddQuestionScreenState createState() => _AddQuestionScreenState();
}

class _AddQuestionScreenState extends State<AddQuestionScreen> {
  late String questionTitle;
  late List<String> choices = List.filled(4, '');
  late int trueChoice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soru Ekleme Ekranı'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(labelText: 'Soru İçeriği'),
              onChanged: (text) {
                setState(() {
                  questionTitle = text;
                });
              },
            ),
            const SizedBox(height: 12.0),
            for (int i = 0; i < choices.length; i++)
              TextField(
                decoration: InputDecoration(labelText: 'Şık ${i + 1}'),
                onChanged: (text) {
                  setState(() {
                    choices[i] = text;
                  });
                },
              ),
            const SizedBox(height: 12.0),
            TextField(
              decoration:
                  const InputDecoration(labelText: 'Doğru Şık Indexi (0-3)'),
              keyboardType: TextInputType.number,
              onChanged: (text) {
                setState(() {
                  trueChoice = int.tryParse(text) ?? 0;
                });
              },
            ),
            const SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () {
                if (questionTitle.isNotEmpty &&
                    choices.every((s) => s.isNotEmpty)) {
                  final newQuestion = Question(
                    content: questionTitle,
                    options: choices,
                    trueOptionIndex: trueChoice,
                  );
                  widget.onQuestionAdded(newQuestion);
                  Navigator.pop(context);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Lütfen tüm alanları doldurun.'),
                    ),
                  );
                }
              },
              child: const Text('Soruyu Ekle'),
            ),
          ],
        ),
      ),
    );
  }
}
