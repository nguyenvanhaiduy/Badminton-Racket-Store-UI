import 'package:flutter/material.dart';

class CustomBottomNavigator extends StatelessWidget {
  const CustomBottomNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(146, 113, 175, 208),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      height: 60,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.category_sharp),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.interests_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.interests_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.interests_outlined),
          ),
        ],
      ),
    );
  }

  // @override
  // Size get preferredSize => const Size.fromHeight(60);
}
