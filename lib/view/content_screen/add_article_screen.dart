import 'package:flutter/material.dart';
import 'package:sadece_iyilik_saglik_admin_panel/core/viewmodel/article_view_model.dart';
import '../../core/model/article_model.dart';
//
// class CreateArticleScreen extends StatefulWidget {
//   const CreateArticleScreen({super.key});
//
//   @override
//   State<CreateArticleScreen> createState() => _CreateArticleScreenState();
// }
//
// class _CreateArticleScreenState extends State<CreateArticleScreen> {
//   TextEditingController authorController = TextEditingController();
//   TextEditingController titleController = TextEditingController();
//   TextEditingController contentController = TextEditingController();
//   TextEditingController sourceController = TextEditingController();
//   late Article article;
//   @override
//   void initState() {
//     article = Article(
//       author: authorController.text,
//       title: titleController.text,
//       content: contentController.text,
//       source: sourceController.text,
//     );
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Edit Article"),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.save),
//             onPressed: () {
//               ArticleViewModel.addArticle(article);
//               Navigator.pop(context);
//             },
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             TextField(
//               decoration: const InputDecoration(labelText: 'Makale Konusu'),
//               onChanged: (text) {
//                 setState(() {
//                   article.title = text;
//                 });
//               },
//             ),
//             const SizedBox(height: 8),
//             TextField(
//               decoration: const InputDecoration(labelText: 'Makale Yazarı'),
//               onChanged: (text) {
//                 setState(() {
//                   article.author = text;
//                 });
//               },
//             ),
//             const SizedBox(height: 8),
//             TextField(
//               decoration: const InputDecoration(labelText: 'Makale Kaynağı'),
//               onChanged: (text) {
//                 setState(() {
//                   article.source = text;
//                 });
//               },
//             ),
//             const SizedBox(height: 16),
//             const Text(
//               "Edit Content:",
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 color: Color(0xFFED8C42),
//               ),
//             ),
//             const SizedBox(height: 8),
//             Expanded(
//               child: TextField(
//                 controller: contentController,
//                 maxLines: null,
//                 expands: true,
//                 keyboardType: TextInputType.multiline,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Color(0xFFED8C42)),
//                   ),
//                 ),
//                 onChanged: (value) {
//                   article.content = value;
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class CreateArticleScreen extends StatefulWidget {
  const CreateArticleScreen({super.key});

  @override
  State<CreateArticleScreen> createState() => _CreateArticleScreenState();
}

class _CreateArticleScreenState extends State<CreateArticleScreen> {
  TextEditingController authorController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  TextEditingController sourceController = TextEditingController();

  String author = '';
  String title = "";
  String content = "";
  String source = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Makale ekle"),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () {
              // Veri girişi tamamlandığında kaydetmek için
              // ArticleViewModel.addArticle(article); kodunu buraya alabilirsiniz.
              // Burada ise sadece Navigator.pop(context); ile ekranı kapatabilirsiniz.
              if (source.isNotEmpty &&
                  content.isNotEmpty &&
                  author.isNotEmpty &&
                  title.isNotEmpty) {
                Article article = Article(
                    author: author,
                    title: title,
                    content: content,
                    source: source);
                ArticleViewModel.addArticle(article);
                Navigator.pop(context);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Lütfen tüm alanları doldurun.'),
                  ),
                );
              }
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'Makale Konusu'),
              onChanged: (text) {
                setState(() {
                  title = text;
                });
              },
            ),
            const SizedBox(height: 8),
            TextField(
              controller: authorController,
              decoration: const InputDecoration(labelText: 'Makale Yazarı'),
              onChanged: (text) {
                setState(() {
                  author = text;
                });
              },
            ),
            const SizedBox(height: 8),
            TextField(
              controller: sourceController,
              decoration: const InputDecoration(labelText: 'Makale Kaynağı'),
              onChanged: (text) {
                setState(() {
                  source = text;
                });
              },
            ),
            const SizedBox(height: 16),
            const Text(
              "Edit Content:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFFED8C42),
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: TextField(
                controller: contentController,
                maxLines: null,
                expands: true,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFED8C42)),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    content = contentController.text;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
