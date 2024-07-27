import 'package:flutter/material.dart';
import 'package:flutter_badminton_racket_store/models/getx.dart';
import 'package:flutter_badminton_racket_store/screens/login.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ObverseItem>(
      init: ObverseItem(),
      builder: (obverseItem) {
        return GetMaterialApp(
          theme: ThemeData(
            primaryColor: const Color.fromARGB(146, 113, 175, 208),
            colorScheme: ColorScheme.fromSwatch(
              accentColor: const Color.fromARGB(146, 113, 175, 208),
            ),
          ),
          home: LoginScreen(),
        );
      },
    );
  }
}
