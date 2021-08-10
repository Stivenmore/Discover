import 'package:discover/src/ui/pages/Home/Homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Discover',
      color: Colors.white,
      theme: ThemeData(
        textTheme: TextTheme(
          headline4: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,),
          headline5: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),
        ),
        scaffoldBackgroundColor: Color(0xff252836),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(0xff252836)
        ),
        primaryColor: Color(0xff3F3D50)
      ),
      home:  Homepage()
    );
  }
}
