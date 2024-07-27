import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_badminton_racket_store/models/getx.dart';
import 'package:get/get.dart';

class ItemCardBuy extends StatelessWidget {
  final String name;
  final String url;
  const ItemCardBuy({super.key, required this.name, required this.url});

  @override
  Widget build(BuildContext context) {
    // final amount = Get.put(ObverseItem());
    var x = 1;
    var price = 0;
    return GetBuilder(
        init: ObverseItem(),
        builder: (amount) {
          return Container(
            margin: const EdgeInsets.only(left: 10, right: 10, top: 30),
            height: 140,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    url,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (x > 0) {
                              x--;
                              amount.changeAmount(x);
                              price = 50;
                              price *= amount.amount;
                              print(amount.amount);
                            }
                          },
                          child: Container(
                            alignment: Alignment.topCenter,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xFF475269).withOpacity(0.4),
                                  blurRadius: 5,
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                            child: const Icon(CupertinoIcons.minus, size: 18),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '${amount.amount}',
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                        ),
                        const SizedBox(width: 8),
                        GestureDetector(
                          onTap: () {
                            x++;
                            amount.changeAmount(x);
                            price = 50;
                            price = price * amount.amount;
                            print(price);
                          },
                          child: Container(
                            alignment: Alignment.topCenter,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xFF475269).withOpacity(0.4),
                                  blurRadius: 5,
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                            child: const Icon(CupertinoIcons.add, size: 18),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(height: 5),
                    GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              blurRadius: 5,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Text(
                      '\$$price',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 5)
                  ],
                )
              ],
            ),
          );
        });
  }
}
