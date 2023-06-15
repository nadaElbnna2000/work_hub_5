import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../utils/colors_manager.dart';
import '../settings/settings.dart';

 enum fontSizes{Large,Medium,Small}

class ApplicationSettings extends StatefulWidget {

  const ApplicationSettings({Key? key}) : super(key: key);

  @override
  State<ApplicationSettings> createState() => _ApplicationSettingsState();
}

class _ApplicationSettingsState extends State<ApplicationSettings> {

  bool darkmode_access = false;
  fontSizes? font_value = fontSizes.Large;
  @override
  Widget build(BuildContext context) {

    return Scaffold(


      body: Column(

        children: [
          SizedBox(
            height:  30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(


              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Image(
                      width: 75,
                      height: 60,
                      image: AssetImage
                        (
                        'assets/icons/arrow_back.png',

                      )),
                ),

                SizedBox(
                  width: 5,
                ),
                Text(
                  'Application Settings',
                  style: TextStyle(
                      fontSize: 32,
                      color: ColorsManager.baseColor

                  ),
                ),
              ],
            ),
          ),

          Container(
            height: 2,
            color: ColorsManager.light_grey_2,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(7)),
                color: ColorsManager.light_grey_1,
              ),
              height: 80,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(

                  children: [
                    Text(

                      'Dark Mode',
                      style: TextStyle(
                        fontSize: 25,
                        color: ColorsManager.baseColor,
                      ),
                    ),
                    Spacer(),

                    FlutterSwitch(
                        width: 45,
                        height: 23,
                        toggleSize: 25,
                        activeSwitchBorder: Border.all(color: ColorsManager.baseColor30),
                        inactiveSwitchBorder: Border.all(color: ColorsManager.baseColor30),
                        activeColor: ColorsManager.baseColor20,
                        toggleColor:  ColorsManager.baseColor30,
                        inactiveColor: ColorsManager.white70,
                        value: darkmode_access,
                        onToggle: (value){
                          setState(() {
                            darkmode_access = value;
                          });
                        }
                    ),

                  ],
                ),



              ),

            ),

          ),


          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(

              width: 500,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(7)),
                color: ColorsManager.light_grey_1,
              ),
              height: 250,

              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(

                      children: [
                        Text(

                          'Font Size :',
                          style: TextStyle(
                            fontSize: 25,
                            color: ColorsManager.baseColor,
                          ),
                        ),

                        SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            RadioListTile<fontSizes>(
                              title: const Text(
                                  'Large',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: ColorsManager.baseColor,
                                ),
                              ),
                                value: fontSizes.Large,
                                groupValue: font_value,
                                onChanged: (fontSizes? value){

                                setState(() {
                                  font_value = value!;
                                });
                                },
                            ),

                            RadioListTile<fontSizes>(
                              title: const Text(
                                  'Medium',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: ColorsManager.baseColor,
                                ),

                              ),
                              value: fontSizes.Medium,
                              groupValue: font_value,
                              onChanged: (fontSizes? value){

                                setState(() {
                                  font_value = value!;
                                });
                              },
                            ),
                            RadioListTile<fontSizes>(
                              title: const Text(
                                  'Small',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: ColorsManager.baseColor,
                                ),

                              ),
                              value: fontSizes.Small,
                              groupValue: font_value,
                              onChanged: (fontSizes? value){

                                setState(() {
                                  font_value = value!;
                                });
                              },
                            ),



                          ],
                        ),

                      ],
                    ),


                ),



              ),

            ),

        ],
      ),
    );
  }
}
