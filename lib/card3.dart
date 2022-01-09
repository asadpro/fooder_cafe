import 'package:flutter/material.dart';
import 'package:fooder_lich/fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Chip> chipWidget() {
      List<String> l1 = [
        'Healthy',
        'Vegan',
        'Greens',
        'Wheet',
        'Pescertarin',
        'Mint',
        'LemonGrass',
        'Salad',
        'Water'
      ];
      List<Chip> chips = [];

      for (String item in l1) {
        Chip variable = Chip(
          label: Text(item),
        );

        chips.add(variable);
      }
      return chips;
    }

    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.6),
          image: DecorationImage(
            image: AssetImage('assets/mag2.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            Container(
              color: Colors.black.withOpacity(0.6),
            ),
            Positioned(
              left: 25.0,
              top: 15.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.book),
                  Text(
                    'Recipe Trends',
                    style: FooderlichTheme.darkTextTheme.headline2,
                  ),
                ],
              ),
            ),
            Center(
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: 12.0,
                children: chipWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
