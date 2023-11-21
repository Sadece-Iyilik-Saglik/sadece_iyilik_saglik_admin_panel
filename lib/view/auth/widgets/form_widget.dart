import 'package:flutter/material.dart';
import 'package:sadece_iyilik_saglik_admin_panel/view/default_home/default_home.dart';

import '../forgot_password.dart';

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
        padding: const EdgeInsets.symmetric(vertical: 10.0),
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
              height: 20,
            ),
            // Tenant
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.apartment_outlined),
                labelText: "Tenant",
                hintText: "Tenant *",
                labelStyle: TextStyle(
                  color: Color(0xB2000000),
                ),
                hintStyle: TextStyle(
                  color: Color(0xB2000000),
                  fontSize: 12.0,
                  fontStyle: FontStyle.italic,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF685BFF)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFED8C42)),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // register forgot password kısmı
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Register?
                TextButton.icon(
                  onPressed: () {
                    // Implement register functionality
                  },
                  icon: const Icon(Icons.app_registration_rounded),
                  label: Text(
                    'Register?'.toUpperCase(),
                    style: const TextStyle(color: Colors.black, fontSize: 12),
                  ),
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all(const Color(0xFF273C66)),
                  ),
                ),
                // Forgot Password
                TextButton.icon(
                  onPressed: () {
                    // Implement forgot password functionality
                    ForgotPasswordScreen.buildShowModalBottomSheet(context);
                  },
                  icon: const Icon(Icons.lock_reset_outlined),
                  label: Text(
                    'Forgot Password?'.toUpperCase(),
                    style: const TextStyle(color: Colors.black, fontSize: 12),
                  ),
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all(const Color(0xFF273C66)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
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
                      builder: (context) => const DefaultHome(),
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
              height: 25,
            ),
          ],
        ),
      ),
    );
  }

  // void showLogIn(Future<BaseModel<AuthenticateModel>> logInFuture) async {
  //   showDialog(
  //     context: context,
  //     builder: (context) => FutureBuilder<BaseModel<AuthenticateModel>>(
  //         future: logInFuture,
  //         builder:
  //         ((context, AsyncSnapshot<BaseModel<AuthenticateModel>> snapshot) {
  //           if (snapshot.hasData && snapshot.data!.suc) {
  //             ///Sunucuya 200 ile başarılı istek atıldı
  //             return SimpleDialog(
  //               title: const Text("Successfully Logged in"),
  //               children: [
  //                 ElevatedButton(
  //                   onPressed: () {
  //                     setState(() {
  //                       TokenClass.me = snapshot.data!.data!;
  //                     });
  //                     Navigator.pop(context);
  //                     Navigator.pushAndRemoveUntil(
  //                       context,
  //                       MaterialPageRoute(
  //                           builder: (context) => const Tenants()),
  //                           (route) => false,
  //                     );
  //                   },
  //                   child: const Text("Okay"),
  //                 ),
  //               ],
  //             );
  //           } else if (snapshot.hasData && !snapshot.data!.suc) {
  //             ///Sunucuya 400 veya başka kod ile ile başarısız istek atıldı
  //             return SimpleDialog(
  //               title: const Text("Error"),
  //               children: [
  //                 Text(snapshot.data!.exception.toString()),
  //                 ElevatedButton(
  //                   onPressed: () {
  //                     Navigator.pop(context);
  //                   },
  //                   child: const Text("Tamam"),
  //                 ),
  //               ],
  //             );
  //           } else if (snapshot.hasError) {
  //             return SimpleDialog(
  //               title: const Text("Error"),
  //               children: [
  //                 Text(snapshot.error.toString()),
  //                 ElevatedButton(
  //                   onPressed: () {
  //                     Navigator.pop(context);
  //                   },
  //                   child: const Text("Tamam"),
  //                 ),
  //               ],
  //             );
  //           } else {
  //             return const Center(child: CircularProgressIndicator());
  //           }
  //         })),
  //   );
  // }
}
