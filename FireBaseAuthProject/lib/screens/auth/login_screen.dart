import 'package:firebase_auth_project/screens/auth/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Log In',
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
                fontSize: 30, fontWeight: FontWeight.w600,color: Colors.black87),
          ),
        ),
        actions: [
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Center(
                child: Text(
                  'Sign Up',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500,color: Colors.green),
                  ),
                ),
              ),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupScreen()));
            },
          ),
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 51,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Log In',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Forgot your password?',
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w600,color: Color(0xff5DB075)),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
