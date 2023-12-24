import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_173/second_page.dart';
import 'package:theme_173/theme_provider.dart';
import 'package:theme_173/ui_helper.dart';

void main() {
  runApp( ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var isDark = context.watch<ThemeProvider>().themeValue;
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      darkTheme: ThemeData.dark(
      ),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text(
                "Hello, ",
                style: mTextStyle43(),
              ),
              Text(
                "Dev ",
                style: mTextStyle34(),
              ),
              Text("World!, ",
                  style: mTextStyle34(
                      fontWeight: FontWeight.bold, fontColor: Colors.blueGrey)),
              Text("Welcome to Flutter", style: mTextStyle25()),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(),));
        },
        child: Icon(Icons.settings),
      ),
    );
  }
}
