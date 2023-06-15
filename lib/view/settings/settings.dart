import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/colors_manager.dart';
import '../application_settings/application_settings.dart';
import '../choose_payment_method/choose_payment_method_screen.dart';
import '../privacy_settings/privacy_settings.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

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
                  child: Image(image: AssetImage(
                      'assets/icons/menu.png'
                  )),
                ),

                SizedBox(
                  width: 15,
                ),
                  Text(
                  'settings',
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
            child: InkWell(
              onTap: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  ChoosePaymentMethodScreen()),
                );



              },
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

                        'Payment methods',
                        style: TextStyle(
                          fontSize: 25,
                          color: ColorsManager.baseColor,
                        ),
                      ),
                      Spacer(),
                     Image(
                      image: AssetImage(
                        'assets/icons/right_arrow.png',

                      ),
                       )
                    ],
                  ),



                ),

              ),
            ),

          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  ApplicationSettings()),
                );



              },
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

                        'Application Settings',
                        style: TextStyle(
                          fontSize: 25,
                          color: ColorsManager.baseColor,
                        ),
                      ),
                      Spacer(),
                      Image(
                        image: AssetImage(
                          'assets/icons/right_arrow.png',

                        ),
                      )

                    ],
                  ),



                ),

              ),
            ),

          ),


          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  PrivacySettings()),
                );



              },
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

                        'Privacy Settings',
                        style: TextStyle(
                          fontSize: 25,
                          color: ColorsManager.baseColor,
                        ),
                      ),

                      Spacer(),
                      Image(
                        image: AssetImage(
                          'assets/icons/right_arrow.png',

                        ),
                      )

                    ],
                  ),



                ),

              ),
            ),

          ),
        ],
      ),
    );
  }
}
