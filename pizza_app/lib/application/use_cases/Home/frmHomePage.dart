// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pizza_app/application/use_cases/Home/FormNavegacion/frmProfilePage.dart';
import 'package:pizza_app/application/use_cases/Home/FormNavegacion/frmShopPage.dart';
import 'package:pizza_app/application/use_cases/Home/FormNavegacion/frmStartPage.dart';

class frmHomePage extends StatefulWidget {
  const frmHomePage({super.key});

  @override
  State<frmHomePage> createState() => _frmHomePageState();
}

class _frmHomePageState extends State<frmHomePage> {
  int currentIndex = 0;
  final screens = [
    const StartPage(),
    const ShopPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        color: const Color.fromRGBO(255, 109, 62, 1),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 8,
          ),
          child: GNav(
            backgroundColor: const Color.fromRGBO(255, 109, 62, 1),
            color: Colors.white,
            activeColor: const Color.fromRGBO(255, 109, 62, 1),
            tabBackgroundColor: Colors.grey[200]!,
            padding: const EdgeInsets.all(14),
            gap: 8,
            selectedIndex: currentIndex,
            onTabChange: (index) {
              setState(
                () {
                  currentIndex = index;
                },
              );
            },
            // ignore: prefer_const_literals_to_create_immutables
            tabs: [
              const GButton(
                icon: Icons.home,
                text: 'Inicio',
              ),
              const GButton(
                icon: Icons.shopping_cart_rounded,
                text: 'Carrito',
              ),
              const GButton(
                icon: Icons.person,
                text: 'Perfil',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
