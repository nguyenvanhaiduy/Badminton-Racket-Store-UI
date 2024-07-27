import 'package:flutter/material.dart';
import 'package:flutter_badminton_racket_store/models/badminton.dart';
import 'package:flutter_badminton_racket_store/models/getx.dart';
import 'package:flutter_badminton_racket_store/widgets/custom_appbar.dart';
import 'package:flutter_badminton_racket_store/widgets/item_car_vertical.dart';
import 'package:flutter_badminton_racket_store/widgets/item_card.dart';
import 'package:get/get.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  final listBadminton = Badminton.listBadminton;
  var obverse = Get.put(ObverseItem());
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Container(
          // height: double.infinity,
          color: Theme.of(context).primaryColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppbar(),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 0),
                      blurRadius: 33,
                      color: const Color.fromARGB(193, 203, 250, 246)
                          .withOpacity(.84),
                    ),
                  ],
                ),
                child: TextField(
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: 'search',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {},
                    ),
                    prefix: const SizedBox(width: 10),
                    contentPadding: const EdgeInsets.all(2),
                  ),
                ),
              ),
              SizedBox(
                // padding: EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.2,
                child: ListView.builder(
                  itemCount: listBadminton.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ItemCard(
                      badminton: listBadminton[index],
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: MediaQuery.of(context).size.height * 0.52,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 0),
                      blurRadius: 33,
                      color: const Color.fromARGB(193, 203, 250, 246)
                          .withOpacity(.5),
                    ),
                  ],
                ),
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  primary: true,
                  itemCount: listBadminton.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.7,
                  ),
                  itemBuilder: (context, index) {
                    return ItemCardVertical(
                      badminton: listBadminton[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 4),
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8,
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
          child: SlidingClippedNavBar.colorful(
            selectedIndex: obverse.selectIndex,
            backgroundColor: Colors.white,
            barItems: [
              BarItem(
                title: 'Home',
                icon: Icons.interests_outlined,
                activeColor: Colors.blue,
                inactiveColor: Colors.green,
              ),
              BarItem(
                title: 'Cart',
                icon: Icons.shopping_cart,
                activeColor: Colors.blue,
                inactiveColor: Colors.red,
              ),
              BarItem(
                title: 'Favorite',
                icon: Icons.favorite_border,
                activeColor: Colors.red,
                inactiveColor: Colors.green,
              ),
              BarItem(
                title: 'Person',
                icon: Icons.person,
                activeColor: Colors.green,
                inactiveColor: Colors.blue,
              ),
            ],
            onButtonPressed: (int index) {
              obverse.changeIndex(index);
            },
          ),
        ),
      ),
    );
  }
}
