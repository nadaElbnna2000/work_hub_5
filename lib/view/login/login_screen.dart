import 'package:flutter/material.dart';
import 'package:work_hub_5/utils/size_manager.dart';

import '../../utils/colors_manager.dart';
import '../../utils/images_manager.dart';
import 'widgets/login_card_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.baseColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                ImagesManager.appLogo,
                width: 50.appWidth(context),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'it’s Our Pleasure to serve you ',
                style: TextStyle(
                  color: ColorsManager.white60,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    ImagesManager.sun,
                    width: 22,
                  ),
                  const Text(
                    ' in WorkHub ',
                    style: TextStyle(
                      color: ColorsManager.white60,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Image.asset(
                    ImagesManager.sun,
                    width: 22,
                  ),
                ],
              ),
              const LoginCardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
