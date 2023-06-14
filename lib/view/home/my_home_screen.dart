import 'package:flutter/material.dart';
import '../../utils/colors_manager.dart';
import '../settings/settings.dart';


class MyHomeScreen extends StatefulWidget {


   MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {



  bool homeSelected=true;
  bool profileSelected=false;
  bool bookingsSelected=false;
  bool inboxSelected=false;
  bool helpCenterSelected=false;
  bool aboutUsSelected=false;
  bool settingsSelected=false;



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
                                MaterialPageRoute(builder: (context) =>  MyHomeScreen()),
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

                          setState(() {
                            homeSelected = !homeSelected;
                            profileSelected = false;

                            bookingsSelected = false;
                            inboxSelected = false;
                            helpCenterSelected=false;
                            aboutUsSelected=false;
                            settingsSelected=false;

                          });



                        },
                        child: Container(



                          decoration: BoxDecoration(
                            color: homeSelected==true
                                ?ColorsManager.purple20
                                :ColorsManager.grey40,

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
                                  fontSize: 25,
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

                          setState(() {
                            profileSelected = !profileSelected;
                            homeSelected=false;
                            bookingsSelected = false;
                            inboxSelected = false;
                            helpCenterSelected=false;
                            aboutUsSelected=false;
                            settingsSelected=false;

                          });
                        },
                        child: Container(

                          height: 55,

                          decoration: BoxDecoration(
                            color: profileSelected==true
                                ?ColorsManager.purple20
                                :ColorsManager.grey40,

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
                                'Account',
                                style: TextStyle(
                                  color: ColorsManager.baseColor,
                                  fontSize: 25,
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

                          setState(() {
                            bookingsSelected = !bookingsSelected;
                            homeSelected=false;
                            inboxSelected = false;
                            profileSelected=false;
                            helpCenterSelected=false;
                            aboutUsSelected=false;
                            settingsSelected=false;
                          });



                        },
                        child: Container(
                          height: 55,

                          decoration: BoxDecoration(
                            color: bookingsSelected==true
                                ?ColorsManager.purple20
                                :ColorsManager.grey40,

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
                                'Bookings',
                                style: TextStyle(
                                  color: ColorsManager.baseColor,
                                  fontSize: 25,
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
                          setState(() {
                            inboxSelected = !inboxSelected;

                            bookingsSelected = false;
                            homeSelected=false;
                            profileSelected=false;
                            helpCenterSelected=false;
                            aboutUsSelected=false;
                            settingsSelected=false;
                          });
                        },
                        child: Container(
                          height: 55,

                          decoration: BoxDecoration(
                            color: inboxSelected==true
                                ?ColorsManager.purple20
                                :ColorsManager.grey40,

                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Image(image:
                              AssetImage(
                                  'assets/icons/inbox.png'
                              )
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Inbox',
                                style: TextStyle(
                                  color: ColorsManager.baseColor,
                                  fontSize: 25,
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
                          setState(() {
                            helpCenterSelected = !helpCenterSelected;


                            homeSelected=false;
                            inboxSelected = false;
                            bookingsSelected = false;

                            profileSelected=false;
                            aboutUsSelected=false;
                            settingsSelected=false;

                          });
                        },
                        child: Container(
                          height: 55,

                          decoration: BoxDecoration(
                            color: helpCenterSelected==true
                                ?ColorsManager.purple20
                                :ColorsManager.grey40,

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
                                  fontSize: 25,
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
                          setState(() {
                            aboutUsSelected = !aboutUsSelected;

                            homeSelected=false;
                            inboxSelected = false;
                            bookingsSelected = false;

                            profileSelected=false;
                            helpCenterSelected=false;
                            settingsSelected=false;

                          });
                        },
                        child: Container(
                          height: 55,

                          decoration: BoxDecoration(
                            color: aboutUsSelected==true
                                ?ColorsManager.purple20
                                :ColorsManager.grey40,

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
                                  fontSize: 25,
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
                          setState(() {
                            settingsSelected = !settingsSelected;
                            homeSelected=false;
                            inboxSelected = false;
                            bookingsSelected = false;

                            profileSelected=false;
                            helpCenterSelected=false;
                            aboutUsSelected=false;
                          });
                        },
                        child: Container(
                          height: 55,

                          decoration: BoxDecoration(
                            color: settingsSelected==true
                                ?ColorsManager.purple20
                                :ColorsManager.grey40,

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
                                  fontSize: 25,
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
