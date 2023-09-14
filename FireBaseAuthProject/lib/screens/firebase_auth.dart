import 'package:firebase_auth_project/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';

class FireBaseAuth extends StatelessWidget {

  const FireBaseAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: const LoginScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        inputDecorationTheme:  InputDecorationTheme(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
          filled: true,
          fillColor: const Color(0xffF6F6F6),
          border: OutlineInputBorder(
            borderSide:  const BorderSide(color: Color(0xffE8E8E8)),
            borderRadius: BorderRadius.circular(8),
          ),
          outlineBorder: const BorderSide(color: Color(0xffE8E8E8)),
          enabledBorder: OutlineInputBorder(
            borderSide:  const BorderSide(color: Color(0xffE8E8E8)),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:  const BorderSide(color: Color(0xffE8E8E8)),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff5DB075),
            padding: const EdgeInsets.symmetric(vertical: 10),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
      ),
    );
  }
}
