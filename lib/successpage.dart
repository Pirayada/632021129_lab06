import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lab06/loginpage.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Success"), actions: [
        IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();

              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ));
            },
            icon: const Icon(Icons.logout)),
      ]),
      body: SafeArea(
          child: Row(
        children: [
          Text("Successful."),
          Icon(Icons.check_box, color: Colors.green),
        ],
      )),
    );
  }
}
