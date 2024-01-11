import 'package:binify/firebase_options.dart';
import 'package:binify/screens/customLV.dart';
import 'package:binify/screens/device_screen.dart';
import 'package:binify/screens/profile_screen.dart';
import 'package:binify/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:binify/screens/login_screen.dart';
import 'package:binify/screens/homescreen.dart';
import 'package:binify/screens/about_screen.dart';
import 'package:binify/screens/dashboard_screen.dart';
import 'package:binify/screens/notification_screen.dart';
import 'package:binify/screens/sidebar.dart';
import 'package:binify/screens/alldevices_screen.dart';
import 'package:binify/screens/crud.dart';
import 'package:binify/screens/repository2.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  // This widget is the root of your application.
  @override   
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  
      title: 'Flutter Intro Screen',
      theme: ThemeData(
          textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 30,
          color: MyColors.titleTextColor,
          fontWeight: FontWeight.bold,
        ),
        displayMedium: TextStyle(
            fontSize: 18,
            color: MyColors.subTitleTextColor,
            fontWeight: FontWeight.w400,
            wordSpacing: 1.2,
            height: 1.2),
        displaySmall: TextStyle(
          fontSize: 18,
          color: MyColors.titleTextColor,
          fontWeight: FontWeight.bold,
        ),
        headlineMedium: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      )),
      home: HomePage()
    );
  }
}

