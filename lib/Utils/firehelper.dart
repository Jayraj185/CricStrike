import 'package:cloud_firestore/cloud_firestore.dart';

class FireHelper{
  FireHelper._();
  static FireHelper fireHelper = FireHelper._();
  FirebaseFirestore firebaseFirestore =FirebaseFirestore.instance;

  Stream<QuerySnapshot<Map<String, dynamic>>> GetData(){
    return firebaseFirestore.collection("game").snapshots();
  }

}