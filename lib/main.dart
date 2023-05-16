import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work_hub_5/providers/auth_provider.dart';
import 'package:work_hub_5/utils/colors_manager.dart';
import 'package:work_hub_5/view/add_visa_card/add_visa_card_screen.dart';
import 'package:work_hub_5/view/change_password/change_password.dart';
import 'package:work_hub_5/view/choose_payment_method/choose_payment_method_screen.dart';
import 'package:work_hub_5/view/confirmation/confirmation_screen.dart';
import 'package:work_hub_5/view/login/login_screen.dart';
import 'package:work_hub_5/view/profile/profile.dart';
import 'package:work_hub_5/view/receipt/receipt_screen.dart';
import 'package:work_hub_5/view/register/register_screen.dart';
import 'package:work_hub_5/view/settings/settings.dart';
import 'package:work_hub_5/view/visa_card/visa_card.dart';

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
      home: AddVisaCardScreen(),
    );
  }
}

