import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);
  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Ray Wenderlich';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        constraints: BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag1.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(17.0),
        ),
        child: Stack(
          children: [
            Positioned(
                top: 10,
                child: Text(
                  category,
                  style: FooderlichTheme.darkTextTheme.bodyText1,
                )),
            Positioned(
                top: 30,
                child: Text(
                  title,
                  style: FooderlichTheme.darkTextTheme.headline2,
                )),
            Positioned(
                bottom: 30,
                right: 0,
                child: Text(
                  description,
                  style: FooderlichTheme.darkTextTheme.bodyText1,
                )),
            Positioned(
                bottom: 10,
                right: 0,
                child: Text(
                  chef,
                  style: FooderlichTheme.darkTextTheme.bodyText1,
                )),
          ],
        ),
      ),
    );
  }
}
