import 'package:flutter/material.dart';
import 'package:flutter_badminton_racket_store/models/accout.dart';
import 'package:flutter_badminton_racket_store/screens/home.dart';
import 'package:get/route_manager.dart';

class LoginScreen extends StatelessWidget {
  final account = Account('admin', '1234');
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final txtName = TextEditingController();
    final txtPassword = TextEditingController();
    var focusnode = FocusNode();
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.jpg'),
                  opacity: 0.1,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                focusNode: focusnode,
                controller: txtName,
                cursorColor: Colors.green,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Enter Username',
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: txtPassword,
                cursorColor: Colors.green,
                obscureText: true,
                obscuringCharacter: '\$',
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Enter Password',
                  prefixIcon: const Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Forgot Password',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: const Color.fromARGB(147, 190, 221, 238),
                ),
                onPressed: () {
                  if (txtName.text == 'admin' && txtPassword.text == '1234') {
                    Get.snackbar(
                      'Success',
                      'Welcome ${txtName.text} to our Badmiton Store',
                    );
                    txtName.text = '';
                    txtPassword.text = '';
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }),
                    );
                  } else {
                    Get.snackbar('Failed', 'Invalid name or password');
                    txtName.text = '';
                    txtPassword.text = '';
                  }
                  FocusScope.of(context).requestFocus(focusnode);
                },
                child: Container(
                  width: double.infinity,
                  height: 60,
                  alignment: Alignment.center,
                  child: const Text('Sign In'),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don\'t Have Account?'),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(146, 0, 0, 0),
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
