import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../utils/colors_manager.dart';
import '../settings/settings.dart';

class PrivacySettings extends StatefulWidget {
  const PrivacySettings({Key? key}) : super(key: key);

  @override
  State<PrivacySettings> createState() => _PrivacySettingsState();
}

class _PrivacySettingsState extends State<PrivacySettings> {

  bool location_status = false;
  bool gallery_status = false;
  bool call_status = false;


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
                  'Privacy Settings',
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

                      'Location Access',
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
                        value: location_status,
                        onToggle: (value){
                            setState(() {
                              location_status = value;
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

                      'Gallery Access',
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
                        value: gallery_status,
                        onToggle: (value){
                          setState(() {
                            gallery_status = value;
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

                      'Call Log Access',
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
                        value: call_status,
                        onToggle: (value){
                          setState(() {
                            call_status = value;
                          });
                        }
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
