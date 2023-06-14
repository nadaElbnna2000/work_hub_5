import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/colors_manager.dart';
import '../../utils/fonts_manager.dart';
import '../settings/settings.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Settings()),
                        );
                      },
                      color: ColorsManager.baseColor,
                      icon: Icon(Icons.arrow_back_ios_new_outlined)
                  ),
                  SizedBox(
                    width: 5,

                  ),
                  Text(
                    'Change Password',
                    style: TextStyle(
                        fontSize: 32,
                        color: ColorsManager.baseColor

                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),

              Container(
                height: 350,
                width: 350,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  color: ColorsManager.light_grey_1,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Enter new password',
                        style: TextStyle(

                          fontSize: 22,
                          color: ColorsManager.baseColor,
                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.lock_outline,
                            color: ColorsManager.baseColor,
                          ),
                          hintText: 'enter new password',
                          hintStyle: TextStyle(
                              color: Colors.grey.withOpacity(0.5),
                              fontSize: FontsManager.font12),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorsManager.baseColor,
                            ),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorsManager.baseColor,
                            ),
                          ),
                        ),
                      ),



                      SizedBox(
                        height: 40,
                      ),



                      Text(
                        'Confirm the password',
                        style: TextStyle(

                          fontSize: 22,
                          color: ColorsManager.baseColor,
                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.lock_outline,
                            color: ColorsManager.baseColor,
                          ),
                          hintText: 'enter the password again',
                          hintStyle: TextStyle(
                              color: Colors.grey.withOpacity(0.5),
                              fontSize: FontsManager.font12),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorsManager.baseColor,
                            ),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorsManager.baseColor,
                            ),
                          ),
                        ),
                      ),

















                    ],
                  ),
                ) ,
              ),


              SizedBox(
                height: 40,
              ),

              Row(
                children: [

                  SizedBox(
                    width: 220,
                  ),
                  Container(
                    height: 60,
                    width: 120,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                      color: ColorsManager.baseColor,
                    ),

                    child: const Text(
                      'next',
                      style: TextStyle(
                        color: ColorsManager.white70,
                        fontSize: FontsManager.font20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                ],
              ),



              SizedBox(

                height: 90,
              ),

              Container(

                decoration: BoxDecoration(
                  color: ColorsManager.light_grey_1,
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                ),
                width: 120,
                height: 10,
              ),


            ],
          ),
        ),
      ),
    );
  }
}
