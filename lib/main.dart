import 'package:digitalcardpe/screens/createcard.dart';
import 'package:digitalcardpe/screens/intropage.dart';
import 'package:digitalcardpe/screens/widgets/bussinessmen/bussinessmen.dart';
import 'package:digitalcardpe/screens/widgets/professional/professional.dart';
import 'package:digitalcardpe/screens/widgets/student/student.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(
      routes: [
        // Home page route
        GoRoute(
          path: '/',
          builder: (context, state) =>  const Intropage(),
        ),

        GoRoute(
          path: '/createcard',
          builder: (context, state) => const Createcard(),
        ),
        GoRoute(
          path: '/student',
          builder: (context, state) => const Student(),
        ),
        GoRoute(
          path: '/professional',
          builder: (context, state) => const Professional(),
        ),
        GoRoute(
          path: '/bussinessmen',
          builder: (context, state) => const Bussinessmen(),
        ),


      ],
    );
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      title: 'Bissiness Builders',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme.apply(bodyColor: Colors.black, displayColor: Colors.black),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

