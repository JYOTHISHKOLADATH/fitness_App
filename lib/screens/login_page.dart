import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_app/services/firebase_auth_methords.dart';
import 'package:flutter/material.dart';

import 'Signup_screen.dart';
import 'bmiCalculation_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isNotPasswordVisible = true;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
  void loginUser(){
    FirebaseAuthMethods(FirebaseAuth.instance).loginWithEmail(email: emailController.text, password: passwordController.text, context: context);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // decoration: const BoxDecoration(
          //     image: DecorationImage(
          //       fit: BoxFit.fitHeight,
          //         image: AssetImage(
          //             "images/WhatsApp Image 2024-02-14 at 4.01.04 PM.jpeg")
          //     )
          //     ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const Text(
                "Login",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff092337),
                    fontSize: 30),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  child:  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                        hintText: "Email",
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
                    obscureText: isNotPasswordVisible,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        focusedBorder: const OutlineInputBorder(),
                        hintText: "Password",
                        suffixIcon: InkWell(
                            onTap: () {
                              isNotPasswordVisible = !isNotPasswordVisible;
                              setState(() {});
                            },
                            child: Icon(isNotPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off)),
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
                      // Navigator.pushReplacement(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => BmiCalculatorPage()),
                      // );
                      loginUser();
                    },
                    child: const Text(
                      "Login",
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
                    "Don't have an account? ",
                    style: TextStyle(color: Color(0xff092337)),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Signup()),
                        );
                      },
                      child: const Text(
                        "Signup",
                        style: TextStyle(
                            color: Color(0xff092337),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
