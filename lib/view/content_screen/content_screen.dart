import 'package:flutter/material.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

import '../../core/base/view/base_view.dart';
import '../../core/model/article_model.dart';
import '../../core/viewmodel/article_view_model.dart';

class ContentScreen extends StatefulWidget {
  const ContentScreen({super.key});

  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  List<Article> articles = ArticleViewModel.allArticles;
  TextEditingController searchController = TextEditingController();
  bool isSearching = false;
  int currentPage = 0;
  int itemsPerPage = 8;
  late final Function(int) onChange;
  late final List<String> textArray;
  // Controllers
  late ScrollController _scrollController;

  @override
  void initState() {
    // initialize scroll controllers
    _scrollController = ScrollController();

    super.initState();
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
        body: SafeArea(
          child: Padding(
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
                            });
                          },
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
                      child: _buildScrollableList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  PreferredSizeWidget get appBar => AppBar(
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Text(
            "Sadece İyilik Sağlık",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: const Color(0xFF273C66),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70.0),
            child: TextField(
              style: const TextStyle(color: Colors.white),
              controller: searchController,
              onChanged: (value) {
                // search(value);
              },
              decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
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

  /// Builder Functions
  ///
  ///
  Widget _buildScrollableList() => Column(
        children: List.generate(
          50,
          (index) => Container(
            height: 100,
            margin:
                const EdgeInsets.symmetric(vertical: 22.0, horizontal: 100.0),
            color: Colors.red,
          ),
        ),
      );
}

class Category {
  final String title;
  bool isSelected;
  Category(this.title, this.isSelected);
}

List<Category> categoryList = [
  Category("Testler", true),
  Category("Makaleler", false),
  Category("Makale Yazarları", false),
];

class CategoryCard extends StatefulWidget {
  final Category category;
  final Function(bool) onPressed;

  const CategoryCard(
      {required this.category, required this.onPressed, Key? key})
      : super(key: key);

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
            widget.onPressed(true);
          },
          child: Text(widget.category.title,
              style: TextStyle(
                  color: widget.category.isSelected
                      ? Colors.black
                      : Colors.grey))),
    );
  }
}
