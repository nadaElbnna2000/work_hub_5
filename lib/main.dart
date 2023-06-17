import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work_hub_5/providers/auth_provider.dart';
import 'package:work_hub_5/utils/colors_manager.dart';
import 'package:work_hub_5/view/abous-us/about_us.dart';
import 'package:work_hub_5/view/booking_workspace.dart';
import 'package:work_hub_5/view/edit_profile/edit_profile.dart';
import 'package:work_hub_5/view/home/my_home_screen.dart';
import 'package:work_hub_5/view/inbox/inbox_sreen.dart';
import 'package:work_hub_5/view/login/login_screen.dart';
import 'package:work_hub_5/view/rating/rating.dart';
import 'package:work_hub_5/view/workSpace_home/workspace_home.dart';
import 'package:work_hub_5/view/workspace_vacancy/WorkSpaceVacancyScreen.dart';

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
      home: Ratingg(),
    );
    //kdkd
  }
}