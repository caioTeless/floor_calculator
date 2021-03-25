import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'core/constants.dart';
import 'core/theme_app.dart';
import 'pages/calculator_page.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => new _MyAppState();
}


class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context){
    return new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new MainPage(),
      image: new Image.asset(
        "assets/icons/ic_floor_calculator.png",
      ),
      photoSize: 100.0,
      backgroundColor: Colors.black,
      loaderColor: Colors.white,
    );
  }
}

class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: kAppTitle,
      theme: kAppTheme, 
      home: CalculatorPage(),
    );
  }
}
