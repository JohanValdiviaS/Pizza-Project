// ignore_for_file: file_names, library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_app/application/use_cases/Home/Logeo/frmSignUpForm.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                height: 120,
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
                  'https://www.pngall.com/wp-content/uploads/2016/05/Pizza-Free-PNG-Image.png',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Registrarse',
              style: GoogleFonts.openSans(
                fontSize: 32,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SignUpForm(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Ya está registrado? ',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    ' Inicie Sesión Ahora!',
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromRGBO(255, 109, 42, 1),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
