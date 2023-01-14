// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:pizza_app/application/use_cases/Home/FormNavegacion/frmPay.dart';
import 'package:pizza_app/domain/entities/Productos.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  late List<Product> availableProducts;

  List<Product> cart = [];

  @override
  void initState() {
    availableProducts = [
      Product(
          name: 'Pizza Italiana',
          price: 10.0,
          imgUrl:
              'https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
      Product(
        name: 'Pizza de pepperoni',
        price: 15.0,
        imgUrl:
            'https://images.unsplash.com/photo-1604382354936-07c5d9983bd3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      ),
      Product(
        name: 'Pizza Hawaiana',
        price: 20.0,
        imgUrl:
            'https://images.vexels.com/media/users/3/131778/isolated/preview/2f58b79f41ddd2cf40e188c533a7f751-plantilla-de-logotipo-de-pizza.png',
      ),
      Product(
        name: 'Lassagna',
        price: 20.0,
        imgUrl:
            'https://images.vexels.com/media/users/3/131778/isolated/preview/2f58b79f41ddd2cf40e188c533a7f751-plantilla-de-logotipo-de-pizza.png',
      ),
      Product(
        name: 'Lassagna 2',
        price: 20.0,
        imgUrl:
            'https://images.vexels.com/media/users/3/131778/isolated/preview/2f58b79f41ddd2cf40e188c533a7f751-plantilla-de-logotipo-de-pizza.png',
      ),
      Product(
        name: 'Promo 01',
        price: 20.0,
        imgUrl:
            'https://images.vexels.com/media/users/3/131778/isolated/preview/2f58b79f41ddd2cf40e188c533a7f751-plantilla-de-logotipo-de-pizza.png',
      ),
      Product(
        name: 'Promo 02',
        price: 20.0,
        imgUrl:
            'https://images.vexels.com/media/users/3/131778/isolated/preview/2f58b79f41ddd2cf40e188c533a7f751-plantilla-de-logotipo-de-pizza.png',
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: availableProducts.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 100,
                  width: 140,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(300),
                    child: Image.network(
                      availableProducts[index].imgUrl,
                      width: 350,
                      height: 150,
                    ),
                  ),
                ),
                Text(
                  availableProducts[index].name,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  availableProducts[index].price.toString(),
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(
                      () {
                        cart.add(
                          availableProducts[index],
                        );
                      },
                    );
                  },
                  child: const Text(
                    'Agregar al carrito',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 109, 62, 1),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(255, 109, 62, 1),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Column(
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Contenido del carrito:',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 305,
                    child: ListView.builder(
                      itemCount: cart.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: SizedBox(
                            height: 80,
                            width: 80,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(500),
                              child: Image.network(
                                availableProducts[index].imgUrl,
                                width: 350,
                                height: 150,
                              ),
                            ),
                          ),
                          title: Text(
                            cart[index].name,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            cart[index].price.toString(),
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          trailing: IconButton(
                            icon: const Icon(
                              Icons.remove_shopping_cart,
                              color: Color.fromRGBO(255, 109, 62, 1),
                            ),
                            onPressed: () {
                              setState(
                                () {
                                  cart.removeAt(
                                    index,
                                  );
                                },
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const frmPayPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Realizar pedido',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 109, 62, 1),
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              );
            },
          );
        },
        child: const Icon(
          Icons.shopping_cart,
        ),
      ),
    );
  }
}
