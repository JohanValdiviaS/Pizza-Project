// ignore_for_file: file_names, camel_case_types, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_app/application/use_cases/Home/frmSignUp.dart';
import 'package:pizza_app/application/use_cases/Home/Logeo/frmLogInForm.dart';

class frmLogInPage extends StatefulWidget {
  const frmLogInPage({super.key});

  @override
  State<frmLogInPage> createState() => _frmLogInPageState();
}

class _frmLogInPageState extends State<frmLogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 1,
                    top: 0,
                    bottom: 0,
                    right: 1,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 120,
                        width: 390,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment(0.0, 1.0),
                            colors: <Color>[
                              Color.fromARGB(255, 255, 122, 78),
                              Color.fromARGB(255, 255, 188, 106),
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 180,
                  width: 320,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Image.network(
                      'https://www.pngall.com/wp-content/uploads/2016/05/Pizza-Free-PNG-Image.png',
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: LoginForm(),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'No es miembro, ',
                  style: GoogleFonts.roboto(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUp(),
                      ),
                    );
                  },
                  child: Text(
                    'Unase a nosotros',
                    style: GoogleFonts.roboto(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromRGBO(255, 109, 42, 1),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
