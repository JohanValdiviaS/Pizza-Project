// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_app/application/use_cases/Home/frmHomePage.dart';
import 'package:pizza_app/infrastructure/controllers/controller_email.dart';

Container buildLogo() {
  return Container(
    height: 80,
    width: 80,
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.blue),
    child: const Center(
      child: Text(
        "T",
        style: TextStyle(color: Colors.white, fontSize: 60.0),
      ),
    ),
  );
}

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();

  String? email;
  String? password;
  String? name;
  bool _obscureText = false;

  bool agree = false;

  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var space = const SizedBox(height: 10);
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          // email
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
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: Color.fromRGBO(241, 146, 31, 1),
                ),
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
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
                  return 'Please enter some text';
                }
                return null;
              },
              onSaved: (val) {
                email = val;
              },
              keyboardType: TextInputType.emailAddress,
            ),
          ),

          space,
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
                color: Colors.black,
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
              controller: pass,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.lock_outline,
                  color: Color.fromRGBO(241, 146, 31, 1),
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
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: const Color.fromRGBO(241, 146, 31, 1),
                  ),
                ),
              ),
              onSaved: (val) {
                password = val;
              },
              obscureText: !_obscureText,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
          space,
          Padding(
            padding: const EdgeInsets.only(
              right: 170,
              bottom: 10,
            ),
            child: Text(
              'Confirm Password',
              style: GoogleFonts.kaiseiOpti(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),

          // confirm passwords
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: Color.fromRGBO(241, 146, 31, 1),
                ),
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
              obscureText: true,
              validator: (value) {
                if (value != pass.text) {
                  return 'password not match';
                }
                return null;
              },
            ),
          ),
          space,
          Padding(
            padding: const EdgeInsets.only(
              right: 240,
              bottom: 10,
            ),
            child: Text(
              'User Name',
              style: GoogleFonts.kaiseiOpti(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          // name
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.account_circle,
                  color: Color.fromRGBO(241, 146, 31, 1),
                ),
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
              ),
              onSaved: (val) {
                name = val;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter some name';
                }
                return null;
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Checkbox(
                  activeColor: const Color.fromRGBO(241, 146, 31, 1),
                  onChanged: (_) {
                    setState(() {
                      agree = !agree;
                    });
                  },
                  value: agree,
                ),
                const Flexible(
                  child: Text(
                      'By creating account, I agree to Terms & Conditions and Privacy Policy.'),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),

          // signUP button
          SizedBox(
            height: 54,
            width: 340,
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();

                  AuthenticationHelper()
                      .signUp(email: email!, password: password!)
                      .then((result) {
                    if (result == null) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const frmHomePage(),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                          result,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ));
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
              child: const Text('Sign Up'),
            ),
          ),
        ],
      ),
    );
  }
}
