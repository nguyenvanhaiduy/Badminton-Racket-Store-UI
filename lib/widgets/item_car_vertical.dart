import 'package:flutter/material.dart';
import 'package:flutter_badminton_racket_store/models/badminton.dart';
import 'package:flutter_badminton_racket_store/screens/detail.dart';
import 'package:flutter_badminton_racket_store/widgets/icon_card.dart';
import 'package:get/get.dart';

class ItemCardVertical extends StatelessWidget {
  final Badminton badminton;
  const ItemCardVertical({super.key, required this.badminton});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Get.to(() => DetailScreen(badminton: badminton));
      },
      child: Container(
        width: size.width * 0.4,
        height: size.height * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.asset(
                badminton.url,
                height: size.height * 0.2,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name: ${badminton.name}',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      'Type: ${badminton.type}',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(fontSize: 12.5),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.titleMedium,
                            children: [
                              const TextSpan(text: 'Price: '),
                              TextSpan(
                                text: '\$${badminton.price}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Row(
                          children: [
                            IconCard(
                              title: 'Show package',
                              message: 'test',
                              color: Color.fromARGB(146, 113, 175, 208),
                              url: 'assets/icons/shopping_card.png',
                              width: 30,
                              height: 30,
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
