import 'package:flutter/material.dart';
import 'package:fooder_lich/fooderlich_theme.dart';
import 'package:fooder_lich/main.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

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
            image: AssetImage('assets/mag5.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(17.0),
        ),
        child: Stack(
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 36.0,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/author_katz.jpeg'),
                    radius: 30.0,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mike Katz',
                      style: FooderlichTheme.lightTextTheme.headline2,
                    ),
                    Text(
                      'Smoothie Connoisseur',
                      style: FooderlichTheme.lightTextTheme.bodyText1,
                    )
                  ],
                ),
              ],
            ),
            Positioned(
              right: 10,
              top: 10,
              child: IconButton(
                alignment: Alignment.topRight,
                onPressed: () {
                  const snakbar = SnackBar(
                    content: Text('Hey! you liked me'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snakbar);
                },
                icon: Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.grey,
                  size: 32.0,
                ),
              ),
            ),
            Expanded(
              // 2
              child: Stack(
                children: [
                  Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Smoothies',
                        style: FooderlichTheme.lightTextTheme.headline1,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                      'Recipe',
                      style: FooderlichTheme.lightTextTheme.headline1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
