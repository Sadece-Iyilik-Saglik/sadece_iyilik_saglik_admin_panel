import 'package:flutter/material.dart';
import 'package:sadece_iyilik_saglik_admin_panel/core/const/app/image_strings.dart';
import 'package:sadece_iyilik_saglik_admin_panel/view/auth/widgets/form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF273C66).withOpacity(0.4),
      body: Stack(
        children: [
          const Opacity(
            opacity: 0.55,
            child: Image(
              image: AssetImage(
                "assets/images/akdu.jpg",
              ),
              // NetworkImage(
              //     'https://upload.wikimedia.org/wikipedia/commons/9/9e/Akdeniz_%C3%9Cniversitesi.jpg'),
              fit: BoxFit.cover, // Resmi Stack boyutuna göre ölçekle
              width: double.infinity, // Genişliği ekrana sığdır
              height: double.infinity, // Yüksekliği ekrana sığdır
            ),
          ),
          Center(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 50,
              color: Colors.white60.withOpacity(0.95),
              child: Container(
                width: MediaQuery.sizeOf(context).height * 0.56,
                height: MediaQuery.sizeOf(context).height * 0.95,
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image(
                        image: AssetImage(logoAkdeniz),
                      ),
                    ),
                    Text(
                      'Sign In',
                      style: TextStyle(color: Colors.black, fontSize: 25.0),
                    ),
                    Text(
                      'Enter your credentials to get started.',
                      style: TextStyle(color: Colors.black, fontSize: 14.0),
                    ),
                    LoginForm(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
