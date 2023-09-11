import 'package:flutter/material.dart';
import 'package:stage2_test2/screens/first_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF048BC2),
        colorScheme: theme.colorScheme.copyWith(secondary: Colors.blueAccent),
        scaffoldBackgroundColor: Colors.grey[300],
        appBarTheme: AppBarTheme(
          color: Color(0xFF048BC2),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF048BC2),
            onPrimary: Colors.white,
            textStyle: TextStyle(fontSize: 16.0),
          ),
        ),
      ),
      home: FirstScreen(),
    );
  }
}
