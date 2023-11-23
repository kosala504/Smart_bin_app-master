import 'package:flutter/material.dart';
//import 'package:my_first_app/pages/login_page.dart';
import 'package:my_first_app/pages/home_page.dart';
//import 'package:my_first_app/pages/profile.dart';
import 'package:my_first_app/styles/app_colors.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget 
{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    // ignore: prefer_const_constructors
    return MaterialApp
    (
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Urbanist',
          scaffoldBackgroundColor: AppColors.background),
          home: const HomePage(),
      //initialRoute: '/',

      routes:
       {
      //  '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
       // '/profile':(context) => const Profile(),
        },
    );
  }
}