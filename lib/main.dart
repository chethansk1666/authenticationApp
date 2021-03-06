import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rider_app/AllScreens/loginScreen.dart';
import 'package:rider_app/AllScreens/mainscreen.dart';
import 'package:rider_app/AllScreens/registerationScreen.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

DatabaseReference userRef = FirebaseDatabase.instance.reference().child("users");


class MyApp extends StatelessWidget {





  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taxi rider app',
      theme: ThemeData(
        fontFamily: "Signatra",

        primarySwatch: Colors.red,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute : LoginScreen.idScreen,
      routes:
      {
        RegisterationScreen.idScreen:(context) => RegisterationScreen(),
        LoginScreen.idScreen:(context) => LoginScreen(),
        MainScreen.idScreen:(context) => MainScreen(),

      },
      debugShowCheckedModeBanner: false,
    );
  }
}

