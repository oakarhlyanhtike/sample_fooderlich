import 'package:flutter/material.dart';

import 'package:fooderlich/theme/fooderlich_theme.dart';
import 'author_card.dart';

class Card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(10.0),
        constraints: BoxConstraints.expand(
          width: 350,
          height: 400,
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/mag5.png'), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        child: Column(
          children: [
            //todo: add author infrmation
            const AuthorCard(
              authorName: 'Mike Katz',
              title: 'Smoothie Connoisseur',
              imageProvider: AssetImage('assets/author_katz.jpeg'),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    right: 16,
                    bottom: 16,
                    child: Text(
                      'Recipe',
                      style: FooderLichTheme.lightTextTheme.headline1,
                    ),
                  ),
                  Positioned(
                    left: 16,
                    bottom: 70,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Smoothies',
                        style: FooderLichTheme.lightTextTheme.headline1,
                      ),
                    ),
                  )
                ],
              ),
            )
            //todo: add positioned text
          ],
        ),
      ),
    );
  }
}
