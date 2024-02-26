import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_app/services/firebase_auth_methords.dart';
import 'package:flutter/material.dart';

import 'bmiCalculation_screen.dart';
import 'login_page.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}




class _SignupState extends State<Signup> {
  @override
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController rePasswordController = TextEditingController();

  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
    ageController.dispose();
    emailController.dispose();
    passwordController.dispose();
    rePasswordController.dispose();
  }

  void signUpUser() async{
    FirebaseAuthMethods(FirebaseAuth.instance).signupWithEmail(email: emailController.text, password: passwordController.text, context: context);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Sign up",
              style: TextStyle(
                  color: Color(0xff092337),
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            const SizedBox(
              height: 30,
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     height: 50,
            //     child: TextField(
            //       controller: nameController,
            //       decoration: const InputDecoration(
            //           border: OutlineInputBorder(),
            //           focusedBorder: OutlineInputBorder(),
            //           hintText: "Name",
            //           fillColor: Colors.white,
            //           filled: true),
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     height: 50,
            //     child: TextField(
            //       controller: ageController,
            //       decoration: const InputDecoration(
            //           border: OutlineInputBorder(),
            //           focusedBorder: OutlineInputBorder(),
            //           hintText: "Age",
            //           fillColor: Colors.white,
            //           filled: true),
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                      hintText: "Enter your e-mail",
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                child: TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                      hintText: "Enter Password",
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                child: TextField(
                  controller: rePasswordController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                      hintText: "Re-Enter Password",
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              height: 40,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff092337),
                  ),
                  onPressed: () {
                    signUpUser();
                    // Navigator.pushReplacement(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => BmiCalculatorPage()),
                    // );
                  },
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account? ",
                  style: TextStyle(color: Color(0xff092337)),
                ),
                InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          color: Color(0xff092337),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
