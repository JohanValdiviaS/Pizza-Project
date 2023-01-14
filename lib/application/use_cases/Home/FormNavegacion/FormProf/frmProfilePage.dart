// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_app/application/use_cases/Home/frmLogIn.dart';
import 'package:pizza_app/infrastructure/controllers/controller_email.dart';
import 'package:pizza_app/infrastructure/controllers/controller_cliente.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: getLista(),
          builder: ((context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: ((context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 1,
                            top: 0,
                            bottom: 0,
                            right: 1,
                          ),
                          child: Container(
                            height: 80,
                            width: 390,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment(0.0, 1.0),
                                colors: <Color>[
                                  Color.fromRGBO(255, 109, 62, 1),
                                  Color.fromRGBO(241, 146, 31, 1),
                                ], // red to yellow
                                tileMode: TileMode.repeated,
                              ),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(250),
                                bottomRight: Radius.circular(250),
                              ),
                            ),
                            child: Image.network(
                              'https://images.vexels.com/media/users/3/131778/isolated/preview/2f58b79f41ddd2cf40e188c533a7f751-plantilla-de-logotipo-de-pizza.png',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
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
                                  snapshot.data?[index]['nombre'],
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
                                  snapshot.data?[index]['apellidos'],
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
                                  snapshot.data?[index]['direccion'],
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
                }),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
        ),
      ),
    );
  }
}
