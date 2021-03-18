import 'package:flutter/material.dart';
import 'Pages/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        tabBarTheme: TabBarTheme(
          labelColor: Color.fromRGBO(86, 93, 145, 1.0),
          labelStyle: TextStyle(
            fontSize: 15,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 15,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
          ),
          unselectedLabelColor: Color.fromRGBO(0, 0, 0, 0.2),
        ),
        fontFamily: 'Montserrat',
      ),
      title: 'MDHOBI DELIVERY APP',
      home: Splash(),
    );
  }
}
