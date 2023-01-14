// ignore_for_file: file_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_app/domain/entities/ListImages.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

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
              height: 20,
            ),
            Container(
              width: 260,
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
              child: Center(
                child: Text(
                  'Nuestras Pizzas',
                  style: GoogleFonts.petrona(
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                ),
                items: imgList
                    .map(
                      (item) => Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            item,
                            fit: BoxFit.cover,
                            width: 800,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 260,
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
              child: Center(
                child: Text(
                  'Nuestras Pastas',
                  style: GoogleFonts.petrona(
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                ),
                items: img1List
                    .map(
                      (item) => Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            item,
                            fit: BoxFit.cover,
                            width: 800,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 310,
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
              child: Center(
                child: Text(
                  'Nuestras Promociones',
                  style: GoogleFonts.petrona(
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                ),
                items: img1List
                    .map(
                      (item) => Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            item,
                            fit: BoxFit.cover,
                            width: 800,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
