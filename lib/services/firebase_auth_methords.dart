import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../screens/bmiCalculation_screen.dart';
import '../utils/snack_bar.dart';

class FirebaseAuthMethods {
  final FirebaseAuth _auth;
  FirebaseAuthMethods(this._auth);

  //Email-Signup
  Future<void> signupWithEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try{
      await _auth.createUserWithEmailAndPassword(email: email, password: password,);
      await sentEmailVerification(context);
    } on FirebaseAuthException catch(e){
      showSnackBar(context,e.message!);
      print(e);
    }
  }



  //Email login
  Future<void> loginWithEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async{
    try{
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      if(!_auth.currentUser!.emailVerified) {
        await sentEmailVerification(context);
      }else  if(_auth.currentUser!.emailVerified) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => const BmiCalculatorPage()),
        );
      }
    }on FirebaseAuthException catch(e){
      showSnackBar(context,e.message!);
    }
  }



  //Email Verification
  Future<void> sentEmailVerification(BuildContext context) async{
    try{
      _auth.currentUser!.sendEmailVerification();
      showSnackBar(context, "Verification Email Shared");
    }on  FirebaseAuthException catch(e){
      showSnackBar(context,e.message!);
      print(e);
    }
  }
}
