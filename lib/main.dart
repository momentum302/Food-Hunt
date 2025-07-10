import 'package:flutter/material.dart';
import 'package:food_delivery/bottom-nav/account.dart';
import 'package:food_delivery/foodHunt/onboarding.dart';
import 'package:food_delivery/foodHunt/splash.dart';
import 'package:food_delivery/propertyHunt.dart';
import 'package:food_delivery/foodHunt/restaurant.dart';
import 'package:food_delivery/welcome.dart';
import 'package:food_delivery/pharmacies.dart';

void main() {
  runApp(FoodHunt());
}

class FoodHunt extends StatelessWidget {
  FoodHunt({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blueGrey,
        ),
        primaryColor: Colors.orange,
        fontFamily: 'Raleways',
        scaffoldBackgroundColor: Colors.blueGrey.shade50,
      ),
      home: SplashScreen(),
      routes: {
        '/welcome': (context) => Welcome(),
        '/pharmarcies': (context) => Pharmacies(),
        '/restaurant': (context) => Restaurant(),
        '/propertyHunt': (context) => PropertyHunt(),
        '/./account': (context) => Account(),
        '/./onboarding': (context) => OnboardingPage()
      },
    );
  }
}
