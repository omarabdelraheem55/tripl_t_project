import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:triplt_project/Provider/new_provider.dart';
import 'package:triplt_project/Screen2/Screen2.dart';
import 'package:triplt_project/login/new_login.dart';
import 'package:triplt_project/new_color/NewColor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (BuildContext context) => NewTourProvider(),
          ),
        ],
        child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: AnimatedSplashScreen(
                splashIconSize: double.infinity,
                splashTransition: SplashTransition.fadeTransition,
                duration: 3000,
                splash: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      NewColor.loginBackground,
                      NewColor.calendarBackground,
                    ]),
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/images/logoimage.png",
                    ),
                  ),
                ),
                nextScreen: Screen2(),),),);

  }
}
