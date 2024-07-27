import 'package:flutter/material.dart';
import 'package:flutter_badminton_racket_store/models/badminton.dart';
import 'package:flutter_badminton_racket_store/widgets/icon_card.dart';

class ItemCard extends StatelessWidget {
  final Badminton badminton;
  const ItemCard({super.key, required this.badminton});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 10),
      width: size.width * 0.89,
      height: size.height * 0.16,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        // boxShadow: [
        //   BoxShadow(
        //     offset: Offset(0, 10),
        //     blurRadius: 1,
        //     color: Colors.grey,
        //   )
        // ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
            child: Image.asset(
              badminton.url,
              width: size.width * 0.4,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name: ${badminton.name}',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Type: ${badminton.type}',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                // const SizedBox(height: 10),
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
          )
        ],
      ),
    );
  }
}
