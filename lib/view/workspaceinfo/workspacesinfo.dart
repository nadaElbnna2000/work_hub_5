import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:work_hub_5/view/workspaceinfo/Desk.dart';
import 'package:work_hub_5/view/workspaceinfo/rooms.dart';

import '../../utils/colors_manager.dart';
import '../../utils/fonts_manager.dart';
import '../settings/settings.dart';
import 'office.dart';


class Amenities {
  final String  Amenitiesname;
  final String iconname;

  Amenities({
    required this.Amenitiesname,
    required this.iconname,
  });

}

class workspacehomeinfo extends StatefulWidget {
  const workspacehomeinfo({Key? key}) : super(key: key);

  @override
  State<workspacehomeinfo> createState() => _workspacehomeinfoState();
}

class _workspacehomeinfoState extends State<workspacehomeinfo> {

  List<Amenities> Am =[
    Amenities(
        Amenitiesname:"WIFI",
        iconname:"assets/icons/wifi.png"
  ),
    Amenities(
        Amenitiesname:"White borad",
        iconname:"assets/icons/borad.png"
    ) ,
    Amenities(
        Amenitiesname:"Free Coffee",
        iconname:"assets/icons/Coffee.png"
    )
  ];


  int currentIndex=0;

  List <Widget> screens =
      [
        rooms(),
        Desks(),
        Office()
      ];



  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (
                                    context) => const Settings()),
                              );
                            },
                            child: Image(
                              image: AssetImage(
                                'assets/icons/menu.png',
                              ),
                            ),
                          ),

                          SizedBox(
                            width: 18,
                          ),

                          Text(
                            'WorkSpace Info',
                            style: TextStyle(
                              color: ColorsManager.baseColor,
                              fontSize: 30,
                            ),
                          ),

                        ],
                      ),


                      SizedBox(
                                            height: 10,
                                           ),
                       Container(

                           child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Text(
                               'Amenities',
                               style: TextStyle(
                                 color: ColorsManager.baseColor,
                                 fontSize: 30,
                               ),
                             ),
                             Container(
                               height: 250,
                               child: ListView.separated(
                                 itemBuilder: (context,index) =>  buildWorkSpaceAm (Am[index]),
                                 separatorBuilder:(context,index) => Container(
                                   width:double.infinity,
                                   height: 1.0,
                                   color: Colors.grey[300],
                                 ) ,
                                 itemCount: Am.length,
                               ),
                             )
                           ],
                     ),
                         ),
                       SizedBox(
                        height: 3,
                      ),


                      screens[currentIndex],



                    ],
                  ),
                ),
              ),
          ],
        ),
      ),

    bottomNavigationBar:BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
    currentIndex:currentIndex,
    onTap: (index)
      {
         setState(() {
           currentIndex=index;
         });
      },
    items:[
      BottomNavigationBarItem(icon:
          Image.asset('assets/icons/private.png'),
       label:'Rooms',
   ),
      BottomNavigationBarItem(icon:
      Image.asset('assets/icons/Desk.png'),
        label:'Desk',
      ),
      BottomNavigationBarItem(icon:
      Image.asset('assets/icons/meeting.png'),
        label:'Offices',
      ),
      ],
    ),
    );
  }

Widget buildWorkSpaceAm (Amenities  Am){
  return Container(
    color:  Colors.white70,
    child: Row(
      children: [
        Image(
          image:
          AssetImage('${Am.iconname}'),
          height: 50,
          width: 80,
        ),
        Text(
          '${Am.Amenitiesname}',
          style: TextStyle(
            color: ColorsManager.baseColor,
            fontSize: 20,
          ),
        ),
      ],
    ),
  );
}

}
