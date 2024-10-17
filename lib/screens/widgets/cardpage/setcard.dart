import 'package:digitalcardpe/common/styles/styles.dart';
import 'package:digitalcardpe/screens/intropage.dart';
import 'package:digitalcardpe/utils/mediaquery/mediaquery.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Setcard extends StatefulWidget {
  const Setcard({super.key});

  @override
  State<Setcard> createState() => _SetcardState();
}

class _SetcardState extends State<Setcard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          gradient: Cgradient.primary,
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.maxFinite,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      color: Ccolor.accent.withOpacity(0.2),
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          topLeft: Radius.circular(50))),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text('set your card here:'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CardSlider(),
                SizedBox(height: 10,),
                Text('Social media:',style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardSlider extends StatelessWidget {
  const CardSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          maxWidth: 600, maxHeight: 600 * (53.98 / 85.6)),
      child: ImageSlideshow(
          isLoop: true,
          width: Cmediaquery(context).screenWidth,
          height:
              Cmediaquery(context).screenWidth * (53.98 / 85.6) -
                  60,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/card/1.png')),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/card/2.png')),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/card/3.png')),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/card/4.png')),
              ),
            ),
            Container(width: 100,
              child: Center(child:
              Celevatedbtn(onpress: (){}, text: 'Add Your Card',iconData: Icons.add_card_rounded,),),)
          ]),
    );
  }
}
