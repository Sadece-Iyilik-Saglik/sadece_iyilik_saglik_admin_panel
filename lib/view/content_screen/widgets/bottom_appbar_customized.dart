import 'package:flutter/material.dart';

class BottomAppBarCustomized extends StatefulWidget {
  const BottomAppBarCustomized({
    super.key,
    this.fabLocation = FloatingActionButtonLocation.centerDocked,
    this.shape = const CircularNotchedRectangle(),
    required this.size,
  });

  final FloatingActionButtonLocation fabLocation;
  final NotchedShape? shape;
  final double size;

  @override
  _BottomAppBarCustomizedState createState() => _BottomAppBarCustomizedState();
}

class _BottomAppBarCustomizedState extends State<BottomAppBarCustomized> {
  bool isQuestionsSelected = true;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 230,
      notchMargin: 10,
      height: widget.size * 0.095,
      shape: widget.shape,
      color: const Color(0xFF273C66),
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Row(
          children: <Widget>[
            TextButton(
              onPressed: () {
                setState(() {
                  isQuestionsSelected = true;
                });
              },
              child: Text(
                "Sorular",
                style: TextStyle(
                  fontSize: 22,
                  color: isQuestionsSelected ? Colors.white : Colors.grey,
                ),
              ),
            ),
            if (widget.fabLocation == FloatingActionButtonLocation.centerDocked)
              const Spacer(flex: 1),
            TextButton(
              onPressed: () {
                setState(() {
                  isQuestionsSelected = false;
                });
              },
              child: Text(
                "Cevaplar",
                style: TextStyle(
                  fontSize: 22,
                  color: !isQuestionsSelected ? Colors.white : Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
