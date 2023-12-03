import 'package:flutter/material.dart';
import 'package:sadece_iyilik_saglik_admin_panel/view/content_screen/widgets/bottom_appbar_customized.dart';
import 'package:sadece_iyilik_saglik_admin_panel/view/content_screen/widgets/primary_text_form_field.dart';
import 'package:sadece_iyilik_saglik_admin_panel/view/content_screen/widgets/responsive_gridlist.dart';

import '../../core/model/question_model.dart';

class AddQuizScreen extends StatefulWidget {
  const AddQuizScreen({super.key});

  @override
  State<AddQuizScreen> createState() => _AddQuizScreenState();
}

class _AddQuizScreenState extends State<AddQuizScreen>
    with SingleTickerProviderStateMixin {
  late String examName = "Sınav Adı";
  late String examDescription = "Sınav Açıklaması";
  TextEditingController examNameController = TextEditingController();
  TextEditingController examDescriptionController = TextEditingController();

  List<Question> questions = [];
  SampleItem? selectedMenu;

  bool isDropdownOpen = true;
  String selectedOption = "Çoktan Seçmeli Soru";

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var sizeWidth = MediaQuery.sizeOf(context).width;
    var sizeHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF273C66),
        title: const Text(
          "Yeni Sınav",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: sizeWidth >= 800
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      leftTopButtonBar(context, sizeWidth),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: rightTopButtonBar(context, sizeWidth),
                      )
                    ],
                  ),
                )
              : Center(
                  child: rightTopButtonBar(context, sizeWidth),
                ),
        ),
      ),
      body: Card(
        margin: EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: MediaQuery.of(context).size.width * 0.2),
        child: TabBarView(
          controller: _tabController,
          children: [
            questionsTabContent(sizeHeight, sizeWidth),
            answersTabContent,
          ],
        ),
      ),
      bottomNavigationBar: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 800) {
            return BottomAppBarCustomized(
              fabLocation: FloatingActionButtonLocation.centerDocked,
              shape: const CircularNotchedRectangle(),
              size: sizeHeight,
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
      floatingActionButton: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 800) {
            return FloatingActionButton(
              onPressed: () {},
              tooltip: 'Create',
              child: const Icon(Icons.add),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildOptionsGrid() {
    return ResponsiveGridList(
      desiredItemWidth: 100,
      minSpacing: 16,
      children: [
        _buildOptionButton(
          'Tablo ekle',
          Icons.table_chart_outlined,
          MediaQuery.sizeOf(context).width * 0.1,
          MediaQuery.sizeOf(context).height * 0.2,
          () {
            setState(() {
              selectedOption = "Tablo ekle";
            });
          },
        ),
        _buildOptionButton(
          'Sıralama',
          Icons.swap_vert_rounded,
          MediaQuery.sizeOf(context).width * 0.1,
          MediaQuery.sizeOf(context).height * 0.2,
          () {
            setState(() {
              selectedOption = "Sıralama";
            });
          },
        ),
        _buildOptionButton(
          'Boş Alan',
          Icons.video_label_outlined,
          MediaQuery.sizeOf(context).width * 0.1,
          MediaQuery.sizeOf(context).height * 0.2,
          () {
            setState(() {
              selectedOption = "Boş Alan";
            });
          },
        ),
        _buildOptionButton(
          'Çoktan Seçmeli',
          Icons.album_outlined,
          MediaQuery.sizeOf(context).width * 0.1,
          MediaQuery.sizeOf(context).height * 0.2,
          () {
            setState(() {
              selectedOption = "Çoktan Seçmeli";
            });
          },
        ),
        _buildOptionButton(
          'Klasik',
          Icons.short_text_sharp,
          MediaQuery.sizeOf(context).width * 0.1,
          MediaQuery.sizeOf(context).height * 0.2,
          () {
            setState(() {
              selectedOption = "Klasik";
            });
          },
        ),
        _buildOptionButton(
          'Tarih ekle',
          Icons.calendar_month_outlined,
          MediaQuery.sizeOf(context).width * 0.1,
          MediaQuery.sizeOf(context).height * 0.2,
          () {
            setState(() {
              selectedOption = "Tarih ekle";
            });
          },
        ),
        _buildOptionButton(
          'Dosya Yüklet',
          Icons.file_upload_rounded,
          MediaQuery.sizeOf(context).width * 0.1,
          MediaQuery.sizeOf(context).height * 0.2,
          () {
            setState(() {
              selectedOption = "Dosya Yüklet";
            });
          },
        ),
      ],
    );
  }

  Widget _buildOptionButton(String text, IconData iconData, double sizeWidth,
      double sizeHeight, Function function) {
    return Container(
      width: sizeWidth,
      height: sizeHeight,
      decoration: BoxDecoration(
        color: const Color(0xFF273C66),
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Colors.black,
          width: 1.0,
        ),
      ),
      child: TextButton(
        onPressed: () {
          function();
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 24,
              color: Colors.white,
            ),
            const SizedBox(height: 8),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Seçenekleri Seç',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 16.0),
              _buildOptionsGrid(),
            ],
          ),
        );
      },
    );
  }

  SizedBox leftTopButtonBar(BuildContext context, double size) {
    return SizedBox(
      width: 200,
      child: TabBar(
        controller: _tabController,
        indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(
            width: 2.0,
            color: Color(0xFFED8C42),
          ),
        ),
        dividerHeight: 0.0,
        tabs: const [
          Tab(
            child: Text(
              "Sorular",
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
          Tab(
            child: Text(
              "Cevaplar",
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  PreferredSize rightTopButtonBar(BuildContext context, double size) {
    return PreferredSize(
        preferredSize: (size >= 800)
            ? const Size.fromHeight(48.0)
            : const Size.fromHeight(20.0),
        child: size < 800
            ? ButtonBar(
                buttonPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.remove_red_eye_outlined,
                        color: Colors.white),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.style_outlined, color: Colors.white),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: const Color(0xFFED8C42).withOpacity(0.9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 8.0),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Cevaplara bak",
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.present_to_all_outlined,
                        color: Colors.white),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_horiz_outlined,
                        color: Colors.white),
                  ),
                ],
              )
            : ButtonBar(
                buttonPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.remove_red_eye_outlined,
                        color: Colors.white),
                    label: const Text(
                      "Önizleme",
                      style: TextStyle(color: Color(0xFFED8C42), fontSize: 13),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.style_outlined, color: Colors.white),
                    label: const Text(
                      "Tema",
                      style: TextStyle(color: Color(0xFFED8C42), fontSize: 13),
                    ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: const Color(0xFFED8C42).withOpacity(0.9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 8.0),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Cevaplara bak",
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.present_to_all_outlined,
                        color: Colors.white),
                    label: const Text(
                      "Sunum",
                      style: TextStyle(color: Color(0xFFED8C42), fontSize: 13),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_horiz_outlined,
                        color: Colors.white),
                  ),
                ],
              ));
  }

  SizedBox get leftTopTabBar {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.15,
      child: TabBar(
        controller: _tabController,
        indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(
            width: 2.0,
            color: Color(0xFFED8C42),
          ),
        ),
        dividerHeight: 0.0,
        tabs: const [
          Tab(
            child: Text(
              "Sorular",
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
          Tab(
            child: Text(
              "Cevaplar",
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget questionsTabContent(double sizeWidth, double sizeHeight) {
    return ListView(
      shrinkWrap: false,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8.0),
              PrimaryTextFormField(
                borderRadius: BorderRadius.circular(24),
                hintText: examName,
                controller: examNameController,
                onChanged: (p0) {
                  examName = p0;
                },
              ),
              const SizedBox(height: 16.0),
              PrimaryTextFormField(
                borderRadius: BorderRadius.circular(24),
                hintText: examDescription,
                controller: examDescriptionController,
                onChanged: (p0) {
                  examDescription = p0;
                },
              ),
              const SizedBox(height: 16.0),
            ],
          ),
        ),
        AnimatedSwitcher(
          reverseDuration: const Duration(milliseconds: 150),
          duration: const Duration(milliseconds: 200),
          transitionBuilder: (child, animation) {
            return ScaleTransition(
              scale: animation,
              child: child,
            );
          },
          child: isDropdownOpen
              ? addButton(sizeHeight, sizeWidth, context)
              : openedButtons,
        ),
      ],
    );
  }

  Container addButton(
      double sizeWidth, double sizeHeight, BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: OutlinedButton.icon(
        onPressed: () {
          setState(() {
            sizeWidth >= 800
                ? isDropdownOpen = !isDropdownOpen
                : _showBottomSheet(context);
          });
        },
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        icon: const Icon(
          Icons.add,
          color: Color(0xFF273C66),
        ),
        label: const Text("Ekle"),
      ),
    );
  }

  Padding get openedButtons {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            onPressed: () {
              setState(() {
                selectedOption = "Küçült";
                isDropdownOpen = true;
              });
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xFF273C66),
            ),
            label: const Text("Küçült"),
          ),
          const SizedBox(
            width: 10,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            onPressed: () {
              setState(() {
                selectedOption = "Çoktan Seçmeli Soru";
              });
            },
            icon: const Icon(
              Icons.album_outlined,
              color: Color(0xFF273C66),
            ),
            label: const Text("Çoktan Seçmeli Soru"),
          ),
          const SizedBox(
            width: 10,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            onPressed: () {
              setState(() {
                selectedOption = "Klasik";
              });
            },
            icon: const Icon(
              Icons.short_text_sharp,
              color: Color(0xFF273C66),
            ),
            label: const Text("Klasik"),
          ),
          const SizedBox(
            width: 10,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            onPressed: () {
              setState(() {
                selectedOption = "Tarih ekle";
              });
            },
            icon: const Icon(
              Icons.calendar_month_outlined,
              color: Color(0xFF273C66),
            ),
            label: const Text("Tarih ekle"),
          ),
          const SizedBox(
            width: 10,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            onPressed: () {
              setState(() {
                selectedOption = "Dosya Yüklet";
              });
            },
            icon: const Icon(
              Icons.file_upload_rounded,
              color: Color(0xFF273C66),
            ),
            label: const Text("Dosya Yüklet"),
          ),
          const SizedBox(
            width: 10,
          ),
          popUpButton
        ],
      ),
    );
  }

  PopupMenuButton<SampleItem> get popUpButton {
    return PopupMenuButton(
      initialValue: selectedMenu,
      onSelected: (SampleItem item) {
        setState(() {
          selectedMenu = item;
        });
      },
      elevation: 20,
      itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
        PopupMenuItem<SampleItem>(
          value: SampleItem.itemOne,
          child: Row(
            children: [
              const Icon(Icons.table_chart_outlined),
              TextButton(
                onPressed: () {
                  setState(() {
                    selectedOption = "Tablo ekle";
                  });
                },
                child: const Text("Tablo ekle"),
              ),
            ],
          ),
        ),
        PopupMenuItem<SampleItem>(
          value: SampleItem.itemThree,
          child: Row(
            children: [
              const Icon(Icons.swap_vert_rounded),
              TextButton(
                onPressed: () {
                  setState(() {
                    selectedOption = "Sıralama";
                  });
                },
                child: const Text("Sıralama"),
              ),
            ],
          ),
        ),
        PopupMenuItem<SampleItem>(
          value: SampleItem.itemTwo,
          child: Row(
            children: [
              const Icon(Icons.video_label_outlined),
              TextButton(
                onPressed: () {
                  setState(() {
                    selectedOption = "Boş Alan";
                  });
                },
                child: const Text("Boş Alan"),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget get answersTabContent => Container();
}

enum SampleItem {
  itemOne,
  itemTwo,
  itemThree,
}
