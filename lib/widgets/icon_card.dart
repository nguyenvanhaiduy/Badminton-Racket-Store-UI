import 'package:flutter/material.dart';
import 'package:flutter_badminton_racket_store/widgets/bottom_sheet_card.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class IconCard extends StatelessWidget {
  final String title;
  final String message;
  final Color color;
  final String url;
  final double width;
  final double height;
  const IconCard({
    super.key,
    required this.title,
    required this.message,
    required this.url,
    required this.color,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showSlidingBottomSheet(context, builder: (context) {
          return SlidingSheetDialog(
            color: const Color.fromARGB(146, 113, 175, 208),
            elevation: 6,
            cornerRadius: 16,
            builder: (context, state) {
              return const BottomCartSheet();
            },
          );
        });
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: color,
        ),
        child: Image.asset(
          url,
          // width: 20,
        ),
      ),
    );
  }
}
