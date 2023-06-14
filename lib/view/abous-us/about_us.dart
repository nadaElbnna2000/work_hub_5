import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/colors_manager.dart';
import '../settings/settings.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [

            SizedBox(

              height: 25,
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
                    icon: Icon(Icons.menu)
                ),

                SizedBox(
                  width: 5,
                ),
                Text(
                  'Abous Us',
                  style: TextStyle(
                      fontSize: 32,
                      color: ColorsManager.baseColor

                  ),
                ),

              ],
            ),

            SizedBox(
              height: 20,
            ),

            Container(
              height:2 ,
              color: ColorsManager.grey90,
            ),
            SizedBox(
              height: 40,
            ),


            Container(
              height: 400,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(7)),
                color: ColorsManager.light_grey_1,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Our Purpose:',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.pinkAccent,
                          ),
                        ),
                      ],

                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(


                      'we aspher to create an application that connect client and workspace  through the service that we provide',
                      style: TextStyle(

                        fontSize: 22,
                        color: ColorsManager.baseColor,
                      ),
                    ),


                    SizedBox(
                      height: 40  ,
                    ),

                    Row(
                      children: [
                        Text(
                          'Our Scope:',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.pinkAccent,
                          ),
                        ),
                      ],

                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(


                      'we will provide our client with recommendations for view working spaces in his/her area (Nearby his/her location)'
                          ', to select , book available spaces saving alot of time and effort for client.',
                      style: TextStyle(

                        fontSize: 22,
                        color: ColorsManager.baseColor,
                      ),
                    ),




                  ],
                ),
              ) ,
            ),
            SizedBox(
              height: 40,
            ),


            Container(
              height: 120  ,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(7)),
                color: ColorsManager.light_grey_1,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Our Emails:',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.pinkAccent,
                          ),
                        ),
                      ],

                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'WorkHub@example.com',
                      style: TextStyle(

                        fontSize: 22,
                        color: ColorsManager.baseColor,
                      ),
                    ),
                    Text(
                      'Support@example.com',
                      style: TextStyle(

                        fontSize: 22,
                        color: ColorsManager.baseColor,
                      ),
                    ),




                  ],
                ),
              ) ,
            ),
          ],
        ),
      ),
    );
  }
}
