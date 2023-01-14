// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_core/firebase_core.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getLista() async {
//Letura de datos
  List pe = [];
  CollectionReference collectionReference = db.collection('cliente');
  QuerySnapshot querySnapshot = await collectionReference.get();
  for (var element in querySnapshot.docs) {
    pe.add(
      element.data(),
    );
  }
  Future.delayed(
    const Duration(seconds: 5),
  );
  return pe;
}
