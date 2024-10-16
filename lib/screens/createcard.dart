import 'package:flutter/material.dart';

class Createcard extends StatefulWidget {
  const Createcard({super.key});

  @override
  State<Createcard> createState() => _CreatecardState();
}

class _CreatecardState extends State<Createcard> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Createcard'),),
    );
  }
}
