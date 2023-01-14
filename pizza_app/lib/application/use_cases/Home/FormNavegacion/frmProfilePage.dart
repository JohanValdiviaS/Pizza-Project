// ignore_for_file: file_names, avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_app/application/use_cases/Home/frmLogIn.dart';
import 'package:pizza_app/infrastructure/controllers/controller_email.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
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
                                      end: Alignment(0.0, 1.0),
                                      colors: <Color>[
                                        Color.fromRGBO(255, 109, 62, 1),
                                        Color.fromRGBO(241, 146, 31, 1),
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
                              Container(
                                width: 260,
                                height: 47,
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment(0.0, 1.0),
                                    colors: <Color>[
                                      Color.fromARGB(255, 255, 161, 45),
                                      Color.fromRGBO(255, 109, 62, 1),
                                    ], // red to yellow
                                    tileMode: TileMode.repeated,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Text(
                                    snapshot.data?['nombre'],
                                    style: GoogleFonts.petrona(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w300,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 260,
                                height: 47,
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment(0.0, 1.0),
                                    colors: <Color>[
                                      Color.fromARGB(255, 255, 161, 45),
                                      Color.fromRGBO(255, 109, 62, 1),
                                    ], // red to yellow
                                    tileMode: TileMode.repeated,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Text(
                                    snapshot.data?['apellidos'],
                                    style: GoogleFonts.petrona(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w300,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 260,
                                height: 47,
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment(0.0, 1.0),
                                    colors: <Color>[
                                      Color.fromARGB(255, 255, 161, 45),
                                      Color.fromRGBO(255, 109, 62, 1),
                                    ], // red to yellow
                                    tileMode: TileMode.repeated,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Text(
                                    snapshot.data?['direccion'],
                                    style: GoogleFonts.petrona(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w300,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 260,
                                height: 47,
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment(0.0, 1.0),
                                    colors: <Color>[
                                      Color.fromARGB(255, 255, 161, 45),
                                      Color.fromRGBO(255, 109, 62, 1),
                                    ], // red to yellow
                                    tileMode: TileMode.repeated,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    AuthenticationHelper().signOut().then(
                                          (_) => Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                              builder: (contex) =>
                                                  const frmLogInPage(),
                                            ),
                                          ),
                                        );
                                  },
                                  child: Text(
                                    'Cerrar Sesión',
                                    style: GoogleFonts.petrona(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w300,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 70,
                          ),
                        ],
                      ),
                    );
                  } else {
                    return const CircularProgressIndicator(
                      color: Color.fromARGB(255, 255, 64, 1),
                    );
                  }
                }),
          ],
        ),
      ),
    );
  }
}
