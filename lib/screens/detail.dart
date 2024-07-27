import 'package:flutter/material.dart';
import 'package:flutter_badminton_racket_store/models/badminton.dart';
import 'package:flutter_badminton_racket_store/models/getx.dart';
import 'package:flutter_badminton_racket_store/widgets/icon_appbar.dart';
import 'package:flutter_badminton_racket_store/widgets/number_icon.dart';
import 'package:get/get.dart';

class DetailScreen extends StatelessWidget {
  final Badminton badminton;
  const DetailScreen({super.key, required this.badminton});

  @override
  Widget build(BuildContext context) {
    // final obverseItem = Get.put(ObverseItem());
    return GetBuilder<ObverseItem>(
        init: ObverseItem(),
        builder: (obverseItem) {
          return MaterialApp(
            home: Scaffold(
              body: SizedBox(
                height: double.infinity,
                // color: Colors.cyan[50],
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconAppbar(
                              icon: const Icon(Icons.arrow_back),
                              onPress: () {
                                Get.back();
                              },
                            ),
                            IconAppbar(
                              icon: obverseItem.favotite == false
                                  ? const Icon(Icons.favorite_outline)
                                  : const Icon(Icons.favorite,
                                      color: Colors.red),
                              onPress: () {
                                obverseItem.changeFavorite();
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Image.asset(
                      badminton.url,
                      fit: BoxFit.cover,
                      height: 300,
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
              bottomNavigationBar: Container(
                padding: const EdgeInsets.only(
                  top: 20,
                  right: 10,
                  left: 10,
                  bottom: 10,
                ),
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          badminton.name,
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '\$${badminton.price}',
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.favorite,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'This is description of the shoe product.This is description of the shoe product.This is description of the shoe product.This is description of the shoe product.',
                      style: TextStyle(fontSize: 18, height: 1.4),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      children: [
                        Text(
                          'Size:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(width: 20),
                        NumberIcon(number: '5'),
                        NumberIcon(number: '6'),
                        NumberIcon(number: '7'),
                        NumberIcon(number: '8'),
                        NumberIcon(number: '9'),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.snackbar(
                              'Test',
                              'Add To Cart',
                              snackStyle: SnackStyle.GROUNDED,
                              snackPosition: SnackPosition.TOP,
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 12),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey[800],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Row(
                              children: [
                                Text(
                                  'Add To Cart',
                                  style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.add_shopping_cart_sharp,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.snackbar(
                              'Test',
                              'Bag',
                              snackStyle: SnackStyle.GROUNDED,
                              snackPosition: SnackPosition.TOP,
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey[800],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(
                              Icons.shopping_bag,
                              size: 50,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
