import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    User? user = FirebaseAuth.instance.currentUser;
    print(user);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SafeArea(
            child: Center(
          child: GestureDetector(
            onTap: () async {
              await FirebaseAuth.instance.signOut();
            },
            child: const Text(
              "Log Out",
              style: TextStyle(color: Colors.white),
            ),
          ),
        )),
      ),
    );
  }
}
