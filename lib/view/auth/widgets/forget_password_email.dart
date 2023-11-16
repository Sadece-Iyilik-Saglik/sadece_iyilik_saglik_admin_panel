import 'package:flutter/material.dart';

import '../../../core/const/app/text_strings.dart';
import '../otp_screen.dart';

class ForgotPasswordMailScreen extends StatelessWidget {
  const ForgotPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF5F5FA7).withOpacity(0.48),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(),
          ),
        ),
      ),
    );
  }
}
