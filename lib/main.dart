import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app_project/users/authentication/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Clothes App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: FutureBuilder(
        builder: (context,dataSnapshot)
        {
          return LoginScreen();
        },
      ),
    );
  }
}

