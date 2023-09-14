import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_project/auth_utility/firebase_auth_services.dart';
import 'package:firebase_auth_project/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }


  void _signUp()async{
    String name = _nameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user =await _auth.signInAuth(email, password);

    if(user != null){
      print('SignUp Successful');
      Navigator.push(context, MaterialPageRoute(builder: (context) =>DashBoardScreen()));
    }else{
      print("Error");
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Sign Up',
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
                fontSize: 30, fontWeight: FontWeight.w600,color: Colors.black87),
          ),
        ),
        leading: GestureDetector(
          child: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Center(
              child:Icon(Icons.close,size: 25,color: Colors.grey,),
            ),
          ),
          onTap: (){
            Navigator.pop(context);
          },
        ),

      ),
      body: Form(
        key: _formKey,
        child: Padding(
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
                      controller: _nameController,
                      decoration: InputDecoration(
                        hintText: 'Name',
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
                      controller: _emailController,
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
                      controller: _passwordController,
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
                  onPressed: _signUp,
                  child: Text(
                    'Sign Up',
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

            ],
          ),
        ),
      ),
    );
  }

}

