import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work_hub_5/providers/auth_provider.dart';
import 'package:work_hub_5/utils/colors_manager.dart';
import 'package:work_hub_5/view/login/login_screen.dart';

void main() {


  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: AuthProvider(),
        ),
      ],
      child:  MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Work Hub',
      theme: ThemeData(
        primarySwatch: ColorsManager.primaryColor,
        primaryColor: ColorsManager.primaryColor,
      ),
      home: LoginScreen(),
    );
  }
}