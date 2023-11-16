import 'package:flutter/material.dart';
import 'package:sadece_iyilik_saglik_admin_panel/core/const/app/image_strings.dart';
import 'package:sidebarx/sidebarx.dart';

class ExampleSidebarX extends StatelessWidget {
  const ExampleSidebarX({
    Key? key,
    required SidebarXController controller,
  })  : _controller = controller,
        super(key: key);

  final SidebarXController _controller;

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: _controller,
      showToggleButton: true,
      extendIcon: Icons.chevron_right_rounded,
      theme: SidebarXTheme(
        // itemPadding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white38,
          borderRadius: BorderRadius.circular(30),
        ),
        hoverColor: scaffoldBackgroundColor,
        textStyle: const TextStyle(color: Color(0xFFC2C7D0)),
        selectedTextStyle: const TextStyle(color: Colors.white),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: canvasColor),
        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: actionColor,
          ),
          gradient: const LinearGradient(
            colors: [accentCanvasColor, canvasColor],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.28),
              blurRadius: 30,
            )
          ],
        ),
        iconTheme: IconThemeData(
          color: Colors.white.withOpacity(0.7),
          size: 20,
        ),
        selectedIconTheme: const IconThemeData(
          color: Colors.white,
          size: 20,
        ),
      ),
      extendedTheme: const SidebarXTheme(
        width: 250,
        decoration: BoxDecoration(
          color: Color(0xFF121E2D),
        ),
      ),
      footerDivider: divider,
      headerBuilder: (context, extended) {
        return SizedBox(
          height: 170,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Image.asset(logoAkdeniz)),
                const Text(
                  "Akdeniz Üniversitesi",
                  style: TextStyle(color: Color(0xFFC2C7D0)),
                )
              ],
            ),
          ),
        );
      },
      items: [
        SidebarXItem(
          icon: Icons.home,
          label: 'Genel İşlemler',
          onTap: () {
            debugPrint('Genel İşlemler');
          },
        ),
        const SidebarXItem(
          icon: Icons.corporate_fare_outlined,
          label: 'Test İşlemleri',
        ),
        const SidebarXItem(
          icon: Icons.person,
          label: 'Admin profile',
        ),
        const SidebarXItem(
          icon: Icons.settings,
          label: 'Ayarlar',
        )
      ],
    );
  }
}

const primaryColor = Color(0xFFED8C42);
const canvasColor = Color(0xFF273C66);
const scaffoldBackgroundColor = Color(0xFF273C66);
const accentCanvasColor = Color(0xFF3E3E61);
const white = Colors.white;
final actionColor = const Color(0xFF5F5FA7).withOpacity(0.6);
final divider = Divider(color: white.withOpacity(0.3), height: 1);
