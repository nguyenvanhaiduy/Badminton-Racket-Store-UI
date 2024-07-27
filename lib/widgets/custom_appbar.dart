import 'package:flutter/material.dart';
import 'package:flutter_badminton_racket_store/widgets/icon_card.dart';
import 'package:get/route_manager.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40, left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const IconCard(
            title: 'Show Menu',
            message: 'test',
            color: Colors.white,
            url: 'assets/icons/menu.png',
            width: 40,
            height: 40,
          ),
          GestureDetector(
            onTap: () {
              Get.snackbar('Show Notification', 'test');
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Stack(
                children: [
                  const Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Icon(
                      Icons.notifications,
                      size: 30,
                    ),
                  ),
                  Positioned(
                    right: 1,
                    top: 3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7.5),
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.red,
                        width: 15,
                        height: 15,
                        child: const Text(
                          '3',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
