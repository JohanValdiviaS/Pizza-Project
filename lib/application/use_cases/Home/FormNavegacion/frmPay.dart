// ignore_for_file: file_names, camel_case_types, avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class frmPayPage extends StatefulWidget {
  const frmPayPage({super.key});

  @override
  State<frmPayPage> createState() => _frmPayPage();
}

class _frmPayPage extends State<frmPayPage> {
  CollectionReference cliente =
      FirebaseFirestore.instance.collection('cliente');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            FutureBuilder(
                future: cliente.doc('Cliente01').get(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    Object? data = snapshot.data?.data();
                    print(data);
                    return Card(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 150,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(300),
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment(0.0, -1.0),
                                      colors: <Color>[
                                        Color.fromARGB(255, 255, 195, 122),
                                        Color.fromARGB(255, 255, 64, 1),
                                      ], // red to yellow
                                      tileMode: TileMode.repeated,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  height: 180,
                                  width: 180,
                                  child: const Icon(
                                    Icons.person_rounded,
                                    size: 160,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 75,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                snapshot.data?['nombre'],
                                style: GoogleFonts.petrona(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Pedido Confirmado',
                                style: GoogleFonts.petrona(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          const CircularProgressIndicator(
                            color: Color.fromARGB(255, 255, 64, 1),
                          ),
                          const SizedBox(
                            height: 140,
                          ),
                        ],
                      ),
                    );
                  } else {
                    return const CircularProgressIndicator();
                  }
                }),
          ],
        ),
      ),
    );
  }
}
