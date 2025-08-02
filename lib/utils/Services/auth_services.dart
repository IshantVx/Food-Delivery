import 'package:firebase_auth/firebase_auth.dart';

class AuthServices{
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  User? getCurrentUser(){
    return _firebaseAuth.currentUser;
}
// sign in
  Future<void> signInWithEmailPassword(String email, String password) async{
    try{
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email,
          password: password
      );
    }catch(e){
      print(e);
    }
  }
  //signup
  Future<void> signUpWithEmailPassword(String email, String password) async{
    try{
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email,
          password: password
      );
    }catch(e){
      print(e);
    }
  }
  Future<void> signOut() async{
    return await _firebaseAuth.signOut();
  }
}