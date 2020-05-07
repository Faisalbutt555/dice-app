import 'package:flutter/material.dart';
import 'package:newnew/Login.dart';
import 'package:newnew/SplashScreen.dart';



// import 'package:newnew/second.dart';

void main() => runApp(MaterialApp(
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,

)
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Login();
    
  }
}
