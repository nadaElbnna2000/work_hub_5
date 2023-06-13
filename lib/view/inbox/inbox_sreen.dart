import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work_hub_5/utils/colors_manager.dart';

import '../settings/settings.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(
              height: 30,
            ),
           Row(
             children: [
               InkWell(
                 onTap: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const Settings()),
                   );
                 },
                 child: Image(
                   image:AssetImage(
                     'assets/icons/menu.png',
                   ),
                 ),
               ),

               SizedBox(
                 width: 18,
               ),

               Text(
                 'Inbox',
                 style: TextStyle(
                   color: ColorsManager.baseColor,
                   fontSize: 30,
                 ),
               ),

               Spacer(),
               Image(
                image: AssetImage(
                   'assets/icons/help.png',
                 ),
               ),
               SizedBox(
                 width: 5,
               ),
               Text(
                 'Help',
                 style: TextStyle(
                   color: ColorsManager.baseColor,
                   fontSize: 25,
                 ),
               ),
             ],
           ) ,

            SizedBox(
              height: 40,
            ),

            Text(
              'Notifications',
              style: TextStyle(
                color: ColorsManager.light_purple,
                fontSize: 30,
                fontWeight: FontWeight.w400
              ),
            ),

            SizedBox(
              height: 5,
            ),


            Container(
              color: ColorsManager.light_purple,
              width: 175,
              height: 1,
            ),


            SizedBox(
              height: 20,
            ),




            Container(
              width: double.infinity,
              height: 600,
              color: ColorsManager.grey60,
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Image(
                    image: AssetImage(
                      'assets/images/notification.png',
                    ),
                  ),

                  SizedBox(
                    height: 25,
                  ),
                  Text(
                      'No notifications',
                    style: TextStyle(
                      color: ColorsManager.baseColor,
                      fontSize: 30,
                    ),
                  ),

                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'you don\'t have any notification',
                    style: TextStyle(
                      color: ColorsManager.light_grey_2,
                      fontSize: 20,
                    ),
                  ),


                ],
              ),
            ),









          ],
        ),
      ),
      
    );
  }
}
