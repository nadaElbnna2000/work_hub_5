import 'package:flutter/material.dart';
import '../../utils/colors_manager.dart';
import '../settings/settings.dart';


class MyWorkSpaceHomeScreen extends StatefulWidget {


  MyWorkSpaceHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyWorkSpaceHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyWorkSpaceHomeScreen> {
  var drawerIndexClicked = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        backgroundColor: ColorsManager.white60,
        leading: Builder(
          builder: (BuildContext context) {
            return InkWell(

              onTap: (){

                Scaffold.of(context).openDrawer();

                MaterialLocalizations.of(context).openAppDrawerTooltip;
              },
              child: Image(image: AssetImage(

                'assets/icons/menu.png',
              ))
              ,

            );


          },
        ),



      ),

      drawer: Drawer(

        child: Column(
          children: [

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ListView(

                    children: [

                      SizedBox(
                        height: 30,
                      ),


                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Settings()),
                              );
                            },
                            child: Image(image: AssetImage(
                                'assets/icons/close.png'
                            )),
                          ),

                        ],
                      ),



                      SizedBox(
                        height: 40,
                      ),


                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Settings()),
                          );
                        },
                        child: Container(



                          decoration: BoxDecoration(
                            color: ColorsManager.purple20,

                            borderRadius: BorderRadius.circular(12),
                          ),


                          height: 55,

                          child: Row(
                            children: [
                              Image(image:
                              AssetImage(
                                  'assets/icons/home.png'
                              )
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Home',
                                style: TextStyle(
                                  color: ColorsManager.baseColor,
                                  fontSize: 21,
                                ),
                              ),

                              Spacer(),

                              Image(image: AssetImage(
                                  'assets/icons/left_arrow.png'
                              ))
                            ],
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 15,
                      ),

                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Settings()),
                          );
                        },
                        child: Container(

                          height: 55,

                          decoration: BoxDecoration(
                            color: ColorsManager.grey40,

                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Image(image:
                              AssetImage(
                                  'assets/icons/account.png'
                              )
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Profile Info',
                                style: TextStyle(
                                  color: ColorsManager.baseColor,
                                  fontSize: 21,
                                ),
                              ),

                              Spacer(),

                              Image(image: AssetImage(
                                  'assets/icons/right_arrow.png'
                              ))
                            ],
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Settings()),
                          );
                        },
                        child: Container(
                          height: 55,

                          decoration: BoxDecoration(
                            color: ColorsManager.grey40,

                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Image(image:
                              AssetImage(
                                  'assets/icons/menu.png'
                              )
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'WorkSpace Info',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: ColorsManager.baseColor,
                                  fontSize: 21,
                                ),
                              ),

                              Spacer(),

                              Image(image: AssetImage(
                                'assets/icons/right_arrow.png',
                              ))
                            ],
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Settings()),
                          );
                        },
                        child: Container(
                          height: 55,

                          decoration: BoxDecoration(
                            color: ColorsManager.grey40,

                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Image(image:
                              AssetImage(
                                  'assets/icons/workspace_vacancy.png'
                              )
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(

                                'WorkSpace vacancy',
                                overflow: TextOverflow.ellipsis,

                                style: TextStyle(
                                  color: ColorsManager.baseColor,
                                  fontSize: 21,
                                ),
                              ),

                              Spacer(),

                              Image(image: AssetImage(
                                  'assets/icons/right_arrow.png'
                              ))
                            ],
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Settings()),
                          );
                        },
                        child: Container(
                          height: 55,

                          decoration: BoxDecoration(
                            color: ColorsManager.grey40,

                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Image(image:
                              AssetImage(
                                  'assets/icons/help_center.png'
                              )
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Help Center',
                                style: TextStyle(
                                  color: ColorsManager.baseColor,
                                  fontSize: 21,
                                ),
                              ),

                              Spacer(),

                              Image(image: AssetImage(
                                  'assets/icons/right_arrow.png'
                              ))
                            ],
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Settings()),
                          );
                        },
                        child: Container(
                          height: 55,

                          decoration: BoxDecoration(
                            color: ColorsManager.grey40,

                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Image(image:
                              AssetImage(
                                  'assets/icons/about_us.png'
                              )
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'About Us',
                                style: TextStyle(
                                  color: ColorsManager.baseColor,
                                  fontSize: 21,
                                ),
                              ),

                              Spacer(),

                              Image(image: AssetImage(
                                  'assets/icons/right_arrow.png'
                              ))
                            ],
                          ),
                        ),
                      ),

                      SizedBox(

                        height: 150,
                      ),


                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Settings()),
                          );
                        },
                        child: Container(
                          height: 55,

                          decoration: BoxDecoration(
                            color: ColorsManager.grey40,

                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Image(image:
                              AssetImage(
                                  'assets/icons/settings.png'
                              )
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Settings',
                                style: TextStyle(
                                  color: ColorsManager.baseColor,
                                  fontSize: 21,
                                ),
                              ),

                              Spacer(),

                              Image(image: AssetImage(
                                  'assets/icons/right_arrow.png'
                              ))
                            ],
                          ),
                        ),
                      ),


                    ]
                ),
              ),
            ),

          ],
        ),
      ),
      body: Column(
        children:
        [
        ],),
    );
  }
}
