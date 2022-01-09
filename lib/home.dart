import 'package:flutter/material.dart';
import 'package:fooder_lich/card2.dart';
import 'package:fooder_lich/card3.dart';
import 'card1.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var selectedItem = 0;

  List<Widget> containers = [
    const Card1(),
    const Card2(),
    const Card3(),
  ];

  void onTaping(int index) {
    setState(() {
      selectedItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooderlich',
          style: Theme.of(context).textTheme.headline6,
        ),
        centerTitle: true,
      ),
      body: containers[selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedItem,
        onTap: onTaping,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Card 1'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Card 2'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Card 3'),
        ],
      ),
    );
  }
}
