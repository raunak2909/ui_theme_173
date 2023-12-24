import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_173/theme_provider.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Second'
        ),
      ),
      body: Center(
        child: Switch(value: context.watch<ThemeProvider>().themeValue, onChanged: (value){
          Provider.of<ThemeProvider>(context, listen: false).themeValue = value;
        }),
      ),
    );
  }
}
