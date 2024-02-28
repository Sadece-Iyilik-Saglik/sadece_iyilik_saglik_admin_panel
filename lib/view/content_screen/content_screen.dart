import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sadece_iyilik_saglik_admin_panel/core/viewmodel/exam_view_model.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';
import '../../core/base/view/base_view.dart';
import '../../core/model/article_model.dart';
import '../../core/model/category_model.dart';
import '../../core/model/exam_model.dart';
import '../../core/model/question_model.dart';
import '../../core/viewmodel/article_view_model.dart';
import 'add_article_screen.dart';
import 'add_question_screen.dart';
import 'components/circular_arrow.dart';

class ContentScreen extends StatefulWidget {
  const ContentScreen({super.key});

  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  List<Article> articles = ArticleViewModel.allArticles;
  List<Exam> exams = ExamViewModel.allExams;

  TextEditingController searchController = TextEditingController();
  bool isSearching = false;
  int currentPage = 0;
  int itemsPerPage = 7;
  late final Function(int) onChange;
  late final List<String> textArray;
  // Controllers
  late ScrollController _scrollController;

  // Variable to determine the selected category
  Category selectedCategory = categoryList[0];

  @override
  void initState() {
    // initialize scroll controllers
    _scrollController = ScrollController();

    super.initState();
  }

  void searchArticle(String query) {
    if (query.isEmpty) {
      setState(() {
        isSearching = false;
        articles = ArticleViewModel.allArticles;
      });
    } else {
      List<Article> searchResults = ArticleViewModel.allArticles
          .where((article) =>
              article.title.toLowerCase().contains(query.toLowerCase()) ||
              article.author.toLowerCase().contains(query.toLowerCase()))
          .toList();
      setState(() {
        isSearching = true;
        articles = searchResults;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: "",
      onModelReady: (model) {},
      onPageBuilder: (context, value) {
        return scaffoldBody;
      },
    );
  }

  Widget get scaffoldBody => Scaffold(
        backgroundColor: const Color(0xFF273C66),
        appBar: appBar,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categoryList.length,
                    itemBuilder: (context, index) {
                      return CategoryCard(
                        category: categoryList[index],
                        onPressed: (b) {
                          for (var category in categoryList) {
                            category.isSelected = false;
                          }
                          setState(() {
                            categoryList[index].isSelected = true;
                            selectedCategory = categoryList[index];
                          });
                        },
                        currentPage: currentPage,
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                child: WebSmoothScroll(
                  controller: _scrollController,
                  scrollOffset: 100,
                  animationDuration: 600,
                  curve: Curves.easeInOutCirc,
                  child: SingleChildScrollView(
                    physics: const ScrollPhysics(),
                    controller: _scrollController,
                    child: selectedCategory.title == "Sınavlar"
                        ? _buildScrollableExamList()
                        : _buildScrollableArticleList(),
                  ),
                ),
              ),
              pageButtons,
            ],
          ),
        ),
      );

  PreferredSizeWidget get appBar => AppBar(
        backgroundColor: const Color(0xFF273C66),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70.0),
            child: TextField(
              style: const TextStyle(color: Colors.white),
              controller: searchController,
              onChanged: (value) {
                searchArticle(value);
              },
              decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 3,
                    color: Color(0xFFED8C42),
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white12,
                  ),
                ),
                helperText:
                    "Departman, Dönem, Komite veya Makale adı ile aratabilirsin.",
                helperStyle: const TextStyle(color: Colors.white70),
                hintText: "Test veya Makale Ara...",
                hintStyle: const TextStyle(color: Colors.white70),
                prefixIcon: const Icon(Icons.search, color: Colors.white),
                suffixIcon: isSearching
                    ? IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          searchController.clear();
                          isSearching = false;
                          setState(() {
                            // articles = ArticleViewModel.allArticles;
                          });
                        },
                      )
                    : null,
              ),
            ),
          ),
        ),
      );

  Widget _buildScrollableArticleList() => Column(
        children: [
          for (int i = currentPage * itemsPerPage;
              i < (currentPage + 1) * itemsPerPage && i < articles.length;
              i++)
            Column(
              children: [
                Container(
                  color: i % 2 == 1 ? Colors.white10 : const Color(0xFF273C66),
                  child: GestureDetector(
                    onTap: () {
                      _navigateToEditArticleScreen(articles[i]);
                    },
                    child: ListTile(
                      title: Text(
                        articles[i].title,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      subtitle: Text(
                        articles[i].author,
                        style: const TextStyle(color: Colors.white38),
                      ),
                    ),
                  ),
                ),
                const Divider(
                  height: 1,
                  color: Color(0xFFED8C42),
                )
              ],
            ),
        ],
      );

  Widget _buildScrollableExamList() => Column(
        children: [
          for (int i = currentPage * itemsPerPage;
              i < (currentPage + 1) * itemsPerPage && i < exams.length;
              i++)
            Column(
              children: [
                Container(
                  color: i % 2 == 1 ? Colors.white10 : const Color(0xFF273C66),
                  child: GestureDetector(
                    onTap: () {
                      _navigateToEditExamScreen(exams[i]);
                    },
                    child: ListTile(
                      title: Text(
                        exams[i].name,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      subtitle: Text(
                        exams[i].subtitle,
                        style: const TextStyle(color: Colors.white38),
                      ),
                    ),
                  ),
                ),
                const Divider(
                  height: 1,
                  color: Color(0xFFED8C42),
                )
              ],
            ),
        ],
      );

  Widget get pageButtons => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularArrow(
              icon: const Icon(
                Icons.keyboard_arrow_left,
                color: Colors.white,
              ),
              onPressed: () {
                if (currentPage <= 0) {
                  return;
                }
                setState(() {
                  currentPage -= 1;
                });
              },
            ),
            Text(
              "${currentPage + 1}",
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white),
            ),
            CircularArrow(
              icon: const Icon(
                Icons.keyboard_arrow_right,
                color: Colors.white,
              ),
              onPressed: () {
                int maxPages;
                if (selectedCategory.title == "Sınavlar") {
                  maxPages = (exams.length / itemsPerPage).ceil();
                } else {
                  maxPages = (articles.length / itemsPerPage).ceil();
                }

                if (currentPage < maxPages - 1) {
                  setState(() {
                    currentPage += 1;
                  });
                }
              },
            ),
          ],
        ),
      );
  void _navigateToEditArticleScreen(Article article) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return EditArticleScreen(article: article);
        },
      ),
    );
  }

  void _navigateToEditExamScreen(Exam exam) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return EditExamScreen(exam: exam);
        },
      ),
    );
  }
}

class CategoryCard extends StatefulWidget {
  CategoryCard(
      {required this.category,
      required this.onPressed,
      Key? key,
      required this.currentPage})
      : super(key: key);
  final Category category;
  final Function(bool) onPressed;
  int currentPage;
  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color:
              widget.category.isSelected ? Colors.white : Colors.transparent),
      child: TextButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.transparent),
        ),
        onPressed: () {
          if (widget.category.title == "Sınav ekle") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const CreateExamScreen();
                  // AddQuizScreen();
                },
              ),
            );
          }
          if (widget.category.title == "Makale ekle") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const CreateArticleScreen();
                  // AddQuizScreen();
                },
              ),
            );
          } else {
            widget.onPressed(true);
            setState(() {
              widget.currentPage = 0;
            });
          }
        },
        child: Text(
          widget.category.title,
          style: TextStyle(
            color: widget.category.isSelected ? Colors.black : Colors.grey,
          ),
        ),
      ),
    );
  }
}

class EditArticleScreen extends StatefulWidget {
  final Article article;

  const EditArticleScreen({required this.article, Key? key}) : super(key: key);

  @override
  State<EditArticleScreen> createState() => _EditArticleScreenState();
}

class _EditArticleScreenState extends State<EditArticleScreen> {
  TextEditingController authorController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();

  @override
  void initState() {
    authorController.text = widget.article.author;
    titleController.text = widget.article.title;
    contentController.text = widget.article.content;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Article"),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () {
              // Save edited details and pop the screen
              widget.article.author = authorController.text;
              widget.article.title = titleController.text;
              widget.article.content = contentController.text;
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Edit Author:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFFED8C42),
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: authorController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFED8C42),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Edit Title:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFFED8C42),
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFED8C42)),
                ),
              ),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EditExamScreen extends StatefulWidget {
  final Exam exam;

  const EditExamScreen({required this.exam, Key? key}) : super(key: key);

  @override
  State<EditExamScreen> createState() => _EditExamScreenState();
}

class _EditExamScreenState extends State<EditExamScreen> {
  TextEditingController nameController = TextEditingController();
  List<Question> editedQuestions = [];
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    nameController.text = widget.exam.name;
    editedQuestions.addAll(widget.exam.questions);
    super.initState();
  }

  Future<bool> _onWillPop() async {
    if (_formKey.currentState!.validate()) {
      return await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Discard changes?'),
          content:
              const Text('If you leave, any unsaved changes will be lost.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('Discard'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('Cancel'),
            ),
          ],
        ),
      );
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Edit Exam"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 100),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Edit Name:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.only(right: size.width * 0.5),
                    child: TextFormField(
                      controller: nameController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a name for the exam';
                        }
                        return null;
                      },
                      decoration:
                          const InputDecoration(border: OutlineInputBorder()),
                    ),
                  ),
                  const SizedBox(height: 8),
                  for (int i = 0; i < editedQuestions.length; i++)
                    _buildQuestionEditor(i),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Form is valid, save the changes
                            widget.exam.name = nameController.text;
                            widget.exam.questions = List.from(editedQuestions);
                            Navigator.pop(context);
                          }
                        },
                        child: const Text("Save"),
                      ),
                      const SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {
                          // Cancel editing and pop the screen
                          Navigator.pop(context);
                        },
                        child: const Text("Cancel"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Implement your add question functionality here
          },
          backgroundColor: const Color(0xFFED8C42),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  Widget _buildQuestionEditor(int index) {
    Question question = editedQuestions[index];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Question ${index + 1}:",
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: TextEditingController(text: question.content),
          onChanged: (value) {
            editedQuestions[index].content = value;
          },
          decoration: const InputDecoration(border: OutlineInputBorder()),
        ),
        const SizedBox(height: 8),
        const Text(
          "Options:",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        for (int j = 0; j < question.options.length; j++)
          _buildOptionEditor(index, j),
        const SizedBox(height: 8),
      ],
    );
  }

  Widget _buildOptionEditor(int questionIndex, int optionIndex) {
    Question question = editedQuestions[questionIndex];
    String option = question.options[optionIndex];

    return Row(
      children: [
        const SizedBox(width: 16),
        Text(
          "Option ${optionIndex + 1}:",
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: TextFormField(
            controller: TextEditingController(text: option),
            onChanged: (value) {
              editedQuestions[questionIndex].options[optionIndex] = value;
            },
            decoration: const InputDecoration(border: OutlineInputBorder()),
          ),
        ),
        const SizedBox(width: 16),
      ],
    );
  }
}
