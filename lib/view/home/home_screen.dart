import 'package:flutter/material.dart';

class GeneralConfigurations extends StatefulWidget {
  const GeneralConfigurations({super.key});

  @override
  State<GeneralConfigurations> createState() => _GeneralConfigurationsState();
}

class _GeneralConfigurationsState extends State<GeneralConfigurations> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF273C66),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [],
          ),
        ),
      ),
    );
  }
}
