import 'package:cloud_firestore/cloud_firestore.dart';

class FireHelper{
  FireHelper._();
  static FireHelper fireHelper = FireHelper._();
  FirebaseFirestore firebaseFirestore =FirebaseFirestore.instance;

  Stream<DocumentSnapshot<Map<String, dynamic>>> GetData(){
    return firebaseFirestore.collection("matches").doc("dBsWK3GnSI4ZDWeeDMZ5").snapshots();
  }

}