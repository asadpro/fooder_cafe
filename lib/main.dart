import 'package:flutter/material.dart';
import 'package:fooder_lich/home.dart';
import 'fooderlich_theme.dart';

void main() {
  // 1
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  // 2

  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = FooderlichTheme.dark();

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        title: 'Fooderlich',
        // 4
        home: Home());
  }
}
