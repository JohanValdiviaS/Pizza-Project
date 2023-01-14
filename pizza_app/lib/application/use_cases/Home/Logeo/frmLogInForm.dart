// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_app/application/use_cases/Home/frmHomePage.dart';
import 'package:pizza_app/infrastructure/controllers/controller_email.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  String? email;
  String? password;

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            'Sign In',
            style: GoogleFonts.josefinSlab(
              fontSize: 42,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 260,
              bottom: 10,
            ),
            child: Text(
              'Email',
              style: GoogleFonts.kaiseiOpti(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 150, 47, 0),
              ),
            ),
          ),

          // email
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: TextFormField(
              // initialValue: 'Input text',
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: Color.fromRGBO(255, 109, 42, 1),
                ),
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
                hintText: 'Enter your email',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(255, 109, 42, 1),
                    width: 2,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(255, 109, 42, 1),
                    width: 2,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Por Favor Ingrese sus credenciales';
                }
                return null;
              },
              onSaved: (val) {
                email = val;
              },
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 240,
              bottom: 10,
            ),
            child: Text(
              'Password',
              style: GoogleFonts.kaiseiOpti(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 150, 47, 0),
              ),
            ),
          ),

          // password
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter your password',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
                prefixIcon: const Icon(
                  Icons.lock_outline,
                  color: Color.fromRGBO(255, 109, 42, 1),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(255, 109, 42, 1),
                    width: 2,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(255, 109, 42, 1),
                    width: 2,
                  ),
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        _obscureText = !_obscureText;
                      },
                    );
                  },
                  child: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: const Color.fromRGBO(255, 109, 42, 1),
                  ),
                ),
              ),
              obscureText: _obscureText,
              onSaved: (val) {
                password = val;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Por Favor Ingrese sus credenciales';
                }
                return null;
              },
            ),
          ),

          const SizedBox(height: 30),

          SizedBox(
            height: 54,
            width: 184,
            child: ElevatedButton(
              onPressed: () {
                // Respond to button press

                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();

                  AuthenticationHelper()
                      .signIn(email: email!, password: password!)
                      .then((result) {
                    if (result == null) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const frmHomePage(),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            result,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                      );
                    }
                  });
                }
              },
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                backgroundColor: const Color.fromRGBO(255, 109, 42, 1),
              ),
              child: Text(
                'Sign In',
                style: GoogleFonts.josefinSlab(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
