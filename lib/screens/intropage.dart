import 'package:digitalcardpe/common/query.dart';
import 'package:digitalcardpe/common/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Intropage extends StatefulWidget {
  const Intropage({super.key});

  @override
  State<Intropage> createState() => _IntropageState();
}

class _IntropageState extends State<Intropage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          gradient: Cgradient.primary,
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const introbar(),
                const SizedBox(height: 30,),
                const Introbody(),
                const SizedBox(height: 20,),
                Createcardcontain(
                  imagestring: 'assets/images/bussiness men.png',
                  title: 'Bussiness men',
                  body: 'here we will write the benefits of this card in bussiness world',
                  onpressed: () {
                    context.go('/bussinessmen');
                  },
                ),
                const SizedBox(height: 20,),
                Createcardcontain(
                  imagestring: 'assets/images/professional.png',
                  title:'Professional',
                  body: 'here we will write the benefits of this card in Professional world',
                  onpressed: () {
                    context.go('/professional');
                  },
                ),
                const SizedBox(height: 20,),
                Createcardcontain(
                  imagestring: 'assets/images/student.png',
                  title: 'Student',
                  body: 'here we will write the benefits of this card in Student life',
                  onpressed: () {
                    context.go('/student');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Createcardcontain extends StatelessWidget {
  const Createcardcontain({
    super.key,
    required this.imagestring,
    required this.title,
    required this.body,
    required this.onpressed,
  });
  final String imagestring, title, body;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            const Color(0xfff8eed2),
            const Color(0xFFB3E5FC).withOpacity(0.2), // Light blue color
            // Light yellow color
          ],
          begin: Alignment.topLeft,
          end: Alignment.topRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
              image: AssetImage(imagestring),
              width: Dimen.getWidth(context) * 0.25),
          Text(
            title,
            style: TextStyle(
                fontSize: Dimen.getWidth(context) * 0.03,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          Text(
            body,
            style: TextStyle(
                fontSize: Dimen.getWidth(context) * 0.02, color: Colors.black),
          ),
          Celevatedbtn(
            onpress: () {
              onpressed();
            },
            text: 'Create you card',
            iconData: Icons.chevron_right,
          )
        ],
      ),
    );
  }
}

class Introbody extends StatelessWidget {
  const Introbody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Make Your Own ',
          style: TextStyle(
              fontSize: Dimen.getWidth(context) * 0.05, color: Colors.black),
        ),
        Text(
          'Digital Identity ',
          style: TextStyle(
              fontSize: Dimen.getWidth(context) * 0.05,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          Ctext.introm1,
          style: TextStyle(
              fontSize: Dimen.getWidth(context) * 0.03, color: Colors.black),
        ),
        Row(
          children: [
            for (int i = 0; i < 5; i++)
              const Icon(
                Icons.star,
                color: Color(0xFFFFD901),
              ),
          ],
        ),
        Text(
          'Over 1000+ client have work with us',
          style: TextStyle(
              fontSize: Dimen.getWidth(context) * 0.025, color: Colors.black),
        ),
      ],
    );
  }
}

class introbar extends StatelessWidget {
  const introbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 50,
      decoration: BoxDecoration(
          color: Ccolor.accent.withOpacity(0.2),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(50), topLeft: Radius.circular(50))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            width: 20,
          ),
          const Text(
            'Digital Card ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          const Spacer(),
          TextButton(
              onPressed: () {},
              child: const Text(
                'Service',
                style: TextStyle(fontSize: 15, color: Colors.black),
              )),
          TextButton(
              onPressed: () {},
              child: const Text(
                'About us',
                style: TextStyle(fontSize: 15, color: Colors.black),
              )),
          Celevatedbtn(
            onpress: () {
              context.go('/registerscreen');
            },
            text: 'Register',
            iconData: Icons.keyboard_double_arrow_right,
          )
        ],
      ),
    );
  }
}

class Celevatedbtn extends StatelessWidget {
  const Celevatedbtn({
    super.key,
    required this.onpress,
    required this.text,
    this.iconData,
  });
  final VoidCallback onpress;
  final String text;
  final IconData? iconData;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onpress();
      },
      style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white, backgroundColor: Ccolor.primary),
      child: Row(
        children: [
          Text(text,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
          Icon(
            iconData,
          )
        ],
      ),
    );
  }
}
