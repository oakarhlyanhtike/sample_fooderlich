import 'package:flutter/material.dart';
import 'package:fooderlich/theme/fooderlich_theme.dart';

class Card1 extends StatelessWidget {
  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Douch';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Ray Wenderlich';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Stack(
          children: [
            Text(category, style: FooderLichTheme.darkTextTheme.bodyText1),
            Positioned(
              top: 20,
              child: Text(
                title,
                style: FooderLichTheme.darkTextTheme.headline5,
              ),
            ),
            Positioned(
              right: 0,
              bottom: 30,
              child: Text(
                description,
                style: FooderLichTheme.darkTextTheme.bodyText1,
              ),
            ),
            Positioned(
              right: 0,
              bottom: 10,
              child: Text(
                chef,
                style: FooderLichTheme.darkTextTheme.bodyText1,
              ),
            ),
          ],
        ),
        //todo: add stack text
        padding: EdgeInsets.all(16.0),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 400,
        ),

        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/mag1.png',
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
