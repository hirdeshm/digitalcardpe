import 'package:flutter/material.dart';

class Bussinessmen extends StatefulWidget {
  const Bussinessmen({super.key});

  @override
  State<Bussinessmen> createState() => _BussinessmenState();
}

class _BussinessmenState extends State<Bussinessmen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Bussiness men'),),
    );
  }
}