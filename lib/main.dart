import 'package:flutter/material.dart';
import 'package:flutter_forward_extended/Screens/SearchScreen.dart';
import 'package:flutter_forward_extended/Screens/Weather.dart';
import 'Screens/LoginScreen.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

