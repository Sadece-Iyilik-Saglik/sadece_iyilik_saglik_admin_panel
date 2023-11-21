import 'package:flutter/material.dart';
import 'package:sadece_iyilik_saglik_admin_panel/view/default_home/widgets/sidebarx_example.dart';
import 'package:sadece_iyilik_saglik_admin_panel/view/home/home_screen.dart';
import 'package:sidebarx/sidebarx.dart';

import '../../core/base/view/base_view.dart';
import '../content_screen/content_screen.dart';

class DefaultHome extends StatefulWidget {
  const DefaultHome({super.key});

  @override
  State<DefaultHome> createState() => _DefaultHomeState();
}

class _DefaultHomeState extends State<DefaultHome> {
  final _controller = SidebarXController(selectedIndex: 0, extended: true);

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

  final List<DrawerItem> drawerItems = [
    DrawerItem('Makale Ekle', Icons.article),
    DrawerItem('Soru Ekle', Icons.question_answer),
    DrawerItem('Etkinlik Ekle', Icons.event),
    DrawerItem('Günlük Söz Ekle', Icons.format_quote),
  ];
  Widget get scaffoldBody => Scaffold(
        backgroundColor: const Color(0xFF273C66),
        body: Row(
          children: [
            if (!(MediaQuery.of(context).size.width < 600))
              ExampleSidebarX(controller: _controller),
            Expanded(
              child: Center(
                child: _ScreensExample(
                  controller: _controller,
                ),
              ),
            ),
          ],
        ),
      );
}

class DrawerItem {
  final String title;
  final IconData icon;

  DrawerItem(this.title, this.icon);
}

class _ScreensExample extends StatefulWidget {
  const _ScreensExample({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final SidebarXController controller;

  @override
  State<_ScreensExample> createState() => _ScreensExampleState();
}

class _ScreensExampleState extends State<_ScreensExample> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedBuilder(
      animation: widget.controller,
      builder: (context, child) {
        final pageTitle = _getTitleByIndex(widget.controller.selectedIndex);
        switch (widget.controller.selectedIndex) {
          case 0:
            return const GeneralConfigurations();
          case 1:
            return const ContentScreen();
          case 2:
          // return const AdminProfile();
          case 3:
          // return const Settings();
          default:
            return Text(
              pageTitle,
              style: theme.textTheme.headlineSmall,
            );
        }
      },
    );
  }
}

String _getTitleByIndex(int index) {
  switch (index) {
    case 0:
      return 'Genel işlemler';
    case 1:
      return 'Test işlemleri';
    case 2:
      return 'Admin profile';
    case 3:
      return 'Ayarlar';
    default:
      return 'Not found page';
  }
}
