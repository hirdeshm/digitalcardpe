import 'package:flutter/material.dart';

class Professional extends StatefulWidget {
  const Professional({super.key});

  @override
  State<Professional> createState() => _ProfessionalState();
}

class _ProfessionalState extends State<Professional> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Professional'),),
    );
  }
}