import 'package:flutter/material.dart';

import 'lottie_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
               Navigator.pushReplacementNamed(context, LottiePage.id);
            },
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
        backgroundColor: Colors.pink,
        title: const Text(
          "Instagram",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "Billabong",
            fontSize: 30,
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [Colors.red, Colors.blue])),
        child: const Center(
          child: Text(
            "Azizbek Murotov",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontFamily: "Azizbek",
            ),
          ),
        ),
      ),
    );
  }
}
