import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getProd() async {
//Letura de datos
  List pe = [];
  CollectionReference collectionReference = db.collection('tipo_producto');
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
