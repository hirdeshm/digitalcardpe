import 'package:digitalcardpe/common/styles/styles.dart';
import 'package:flutter/material.dart';

class Registerscreen extends StatefulWidget {
  const Registerscreen({super.key});

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        margin: EdgeInsets.symmetric(horizontal: 50,vertical: 70),
        decoration: BoxDecoration(
          gradient: Cgradient.secondary,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          children: [
            Text('login Work')
          ],
        ),
      ),
    );
  }
}
