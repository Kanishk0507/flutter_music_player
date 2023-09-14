import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:music_player/view/home.dart';
import 'package:music_player/view/sign_up.dart';
import 'package:music_player/widgets/reusable_widgets.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.deepPurple.shade800.withOpacity(0.8),
            Colors.deepPurple.shade200.withOpacity(0.8),
          ],
        ),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            20, MediaQuery.of(context).size.height * 0.1, 30, 98),
            child: Form(
              key: formKey,
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/music_logo.png"),
                const SizedBox(
                  height: 30,
                ),
                reusableTextField("Enter Email ID", Icons.person_outline, false,
                    _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Password", Icons.lock_outline, true,
                    _passwordTextController),
                const SizedBox(
                  height: 20,               
                ),  
                       
                signInSignUpButton(context, true,formKey, (){
                  FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailTextController.text, 
                  password: _passwordTextController.text);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));

                  const snackBar = SnackBar(
                   content: Text('User Signed In Successfully'),
                   duration: Duration(seconds: 1),
                   );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                 },),
                signUpOption(),
            ],
          ),
        ),
        ),
       ),
      ),
    );
  }

 Row signUpOption(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text("Don't have account?",
      style: TextStyle(color: Color.fromARGB(146, 255, 255, 255)),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push
          (context,MaterialPageRoute(builder: (context) =>const SignUp()));
        },
        child: const Text(
          " Sign Up",
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
        ),
      )
    ],
  );
 }
}

