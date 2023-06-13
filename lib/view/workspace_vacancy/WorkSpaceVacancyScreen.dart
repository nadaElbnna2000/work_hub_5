import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:work_hub_5/utils/colors_manager.dart';

import '../settings/settings.dart';

class WorkSpaceVacancyScreen extends StatelessWidget {
  const WorkSpaceVacancyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(

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
                  child: Image(image: AssetImage(

            'assets/icons/menu.png',
                  ))
                  ,

                ),
                  SizedBox(
                    width: 20,
                  ),

                  Text(
                      'WorkSpace Vacancy',
                    style: TextStyle(
                      color: ColorsManager.purpleDarkColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                      )

                ],
              ),

              SizedBox(
                  height: 20,
                ),


              Container(
               width: 500,
              color: ColorsManager.grey40,
              height: 250,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [

                      Row(
                        children: [
                          Text(
                            'Room Vacancies',
                            style: TextStyle(
                              color: ColorsManager.baseColor,
                              fontSize: 25,
                              fontWeight: FontWeight.w500,

                            ),
                          ),
                          Spacer(),
                          Image(image:
                          AssetImage('assets/icons/up_arrow.png')),

                        ],
                      ),

                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 175,
                        color: ColorsManager.grey60,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                                'Available Rooms: 4',
                              style: TextStyle(
                                color: ColorsManager.baseColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 25,
                              ),

                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Rooms Vacancies: 2',
                              style: TextStyle(
                                color: ColorsManager.baseColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 25,
                              ),

                            ),
                            SizedBox(
                              height: 25,
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(

                                  decoration: BoxDecoration(
                                    color: Colors.purpleAccent,

                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width: 140,
                                  child: TextButton(

                                      onPressed: (){},
                                      child: Text(
                                        '+1 Room',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                  ),
                                ),

                                SizedBox(
                                  width: 35,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: ColorsManager.purpleDarkColor,

                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width: 140,

                                  child: TextButton(

                                    onPressed: (){},
                                    child: Text(
                                      '-1 Room',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            )
                          ],
                        ),
                      )

                  ],),
                ),

              ),

              SizedBox(
                height: 30,
              ),

              Container(
                width: 500,
                color: ColorsManager.grey40,
                height: 250,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [

                      Row(
                        children: [
                          Text(
                            'Private Office Vacancies',
                            style: TextStyle(
                              color: ColorsManager.baseColor,
                              fontSize: 25,
                              fontWeight: FontWeight.w500,

                            ),
                          ),
                          Spacer(),
                          Image(image:
                          AssetImage('assets/icons/up_arrow.png')),

                        ],
                      ),

                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 175,
                        color: ColorsManager.grey60,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Available Private Office: 3',
                              style: TextStyle(
                                color: ColorsManager.baseColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 25,
                              ),

                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Private Office Vacancies: 2',
                              style: TextStyle(
                                color: ColorsManager.baseColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 25,
                              ),

                            ),
                            SizedBox(
                              height: 25,
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(

                                  decoration: BoxDecoration(
                                    color: Colors.purpleAccent,

                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width: 140,
                                  child: TextButton(

                                    onPressed: (){},
                                    child: Text(
                                      '+1 Office',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),

                                SizedBox(
                                  width: 35,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: ColorsManager.purpleDarkColor,

                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width: 140,

                                  child: TextButton(

                                    onPressed: (){},
                                    child: Text(
                                      '-1 Office',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            )
                          ],
                        ),
                      )

                    ],),
                ),

              ),




              SizedBox(
                height: 30,
              ),

              Container(
                width: 500,
                color: ColorsManager.grey40,
                height: 250,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [

                      Row(
                        children: [
                          Text(
                            'Desk Vacancies',
                            style: TextStyle(
                              color: ColorsManager.baseColor,
                              fontSize: 25,
                              fontWeight: FontWeight.w500,

                            ),
                          ),
                          Spacer(),
                          Image(image:
                          AssetImage('assets/icons/up_arrow.png')),

                        ],
                      ),

                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 175,
                        color: ColorsManager.grey60,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Available Desks: 4',
                              style: TextStyle(
                                color: ColorsManager.baseColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 25,
                              ),

                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Desks Vacancies: 2',
                              style: TextStyle(
                                color: ColorsManager.baseColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 25,
                              ),

                            ),
                            SizedBox(
                              height: 25,
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(

                                  decoration: BoxDecoration(
                                    color: Colors.purpleAccent,

                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width: 140,
                                  child: TextButton(

                                    onPressed: (){},
                                    child: Text(
                                      '+1 Desks',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),

                                SizedBox(
                                  width: 35,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: ColorsManager.purpleDarkColor,

                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width: 140,

                                  child: TextButton(

                                    onPressed: (){},
                                    child: Text(
                                      '-1 Desks',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            )
                          ],
                        ),
                      )

                    ],),
                ),

              ),



            ],
          ),
        ),
      ),
    );
  }
}
