import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FireHelper{
  FireHelper._();
  static FireHelper fireHelper = FireHelper._();
  FirebaseFirestore firebaseFirestore =FirebaseFirestore.instance;
FirebaseAuth firebaseauth = FirebaseAuth.instance;
  Stream<QuerySnapshot<Map<String, dynamic>>> GetData(){
    return firebaseFirestore.collection("game").snapshots();
  }
  Stream<QuerySnapshot<Map<String, dynamic>>> GetPredictionData(){
    return firebaseFirestore.collection("prediction").doc("nRWR4gqbaN50xXMqlJ6p").collection("today").snapshots();
  }

  Future<void> phoneAuthentication(String code,String number) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '$code $number',
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) {
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

}