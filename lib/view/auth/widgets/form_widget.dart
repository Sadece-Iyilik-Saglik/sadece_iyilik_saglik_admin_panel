import 'package:flutter/material.dart';
import '../../content_screen/content_screen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _isPasswordVisible = false;
  String email = "admin@root.com";
  String password = r"123Pa$$word!";
  //Başına r harfi koymamın nedeni $ işaretini kullanabilmek için.

  Widget _buildSuffixIcon() {
    return IconButton(
      onPressed: () {
        setState(() {
          _isPasswordVisible = !_isPasswordVisible;
        });
      },
      icon: _isPasswordVisible
          ? const Icon(Icons.visibility)
          : const Icon(Icons.visibility_off),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // email
            TextFormField(
              initialValue: email,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: "E-mail",
                hintText: "E-mail",
                labelStyle: TextStyle(
                  color: Color(0xB2000000),
                ),
                hintStyle: TextStyle(
                  color: Color(0xB2000000),
                  fontSize: 12.0,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF685BFF),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFED8C42),
                  ),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  email = value;
                });
              },
            ),
            const SizedBox(
              height: 20,
            ),
            // password
            TextFormField(
              initialValue: password,
              obscureText: !_isPasswordVisible,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.fingerprint),
                labelText: "Password",
                hintText: "Password",
                labelStyle: const TextStyle(
                  color: Color(0xB2000000),
                ),
                hintStyle: const TextStyle(
                  color: Color(0xB2000000),
                  fontSize: 12.0,
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF685BFF),
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFED8C42)),
                ),
                suffixIcon: _buildSuffixIcon(),
              ),
              onChanged: (value) {
                setState(() {
                  password = value;
                });
              },
            ),
            const SizedBox(
              height: 45,
            ),
            // Sign in Butonu
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  backgroundColor: const Color(0xFF273C66),
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ContentScreen(),
                      // DefaultHome(),
                    ),
                    (route) => false,
                  );
                  // showLogIn(TokensService.getToken(email, password));
                },
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Giriş Yap",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ), // Sign in
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
