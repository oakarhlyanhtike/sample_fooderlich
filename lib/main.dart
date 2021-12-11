import 'package:flutter/material.dart';
import 'theme/fooderlich_theme.dart';
import 'home.dart';

void main() {
  runApp(FooderLich());
}

class FooderLich extends StatelessWidget {
  const FooderLich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //todo: create theme
    final theme = FooderLichTheme.dark();
    //todo: apply home widget
    return MaterialApp(
        theme: theme,
        //todo : Apptheme
        title: 'Fooderlich',
        debugShowCheckedModeBanner: false,
        home: const Home());
  }
}
