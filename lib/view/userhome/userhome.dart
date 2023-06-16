import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../utils/colors_manager.dart';
import '../../utils/fonts_manager.dart';
import '../settings/settings.dart';


class workingSpacesmodel
{
   final  String imagepath;
   final String text1;
   final String text2;
   final String text3;
   final String text4;
   workingSpacesmodel({
     required this.imagepath, required this.text1,
     required this.text2,
     required this.text3,
     required this.text4
});

}




class Userhome extends StatelessWidget {
  const Userhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<workingSpacesmodel> WS =[
      workingSpacesmodel(
        imagepath: 'assets/icons/wsimage.png',
        text1: 'fffff',
        text2: 'ffff',
        text3: 'fffff',
        text4: 'ffff',
      )
,
      workingSpacesmodel(
        imagepath: 'assets/icons/wsimage.png',
        text1: 'bbbb',
        text2: 'bbbb',
        text3: 'bbb',
        text4: 'bbbbbbb',
      ) ,
      workingSpacesmodel(
        imagepath: 'assets/icons/wsimage.png',
        text1: 'tttt',
        text2: 'ttttt',
        text3: 'tttt',
        text4: 'ttttt',
      )
    ];

    return Scaffold(

      body:
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height:30,
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
                      'Home',
                      style: TextStyle(
                        color: ColorsManager.baseColor,
                        fontSize: 30,
                      ),
                    ),

                  ],
                ) ,
                  Container(
                    child:
                    Column(
                      children: [
                        SizedBox(
                          height:20,
                        ),
                        TextFormField(
                                  decoration:InputDecoration(
                                      labelText: 'Search',
                                      border:OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20.0),
                                          borderSide: BorderSide(color: ColorsManager.baseColor)
                                      ),
                                      prefixIcon: IconButton(
                                        icon: Icon(Icons.search, color: ColorsManager.baseColor,),
                                        onPressed: () {
                                          // Perform the search here
                                        },
                                  )
                              ),
                        ),
                      ],
                    )
                  ),
                SizedBox(
                  height:30,
                ),
                Text('Space Type',

                    style: TextStyle(
                      color: ColorsManager.baseColor,
                      fontSize: 20,)
                ),
                SizedBox(
                  height:20,
                ),
                 Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                        children: [


                          Expanded(
                            child: Container(
                              color:  Colors.white70,
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Image.asset('assets/icons/meeting.png'),
                                    iconSize: 80,
                                    onPressed: () {},
                                  ),
                                  Text('Meeting room',

                                    style: TextStyle(
                                    color: ColorsManager.baseColor,
                                    fontSize: 15,)
                                  )
                                ],
                              ),
                            ),
                          ),

                          Expanded(
                            child: Container(
                              color:  Colors.white70,
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Image.asset('assets/icons/private.png'),
                                    iconSize: 80,
                                    onPressed: () {},
                                  ),
                                  Text('Private Office',

                                      style: TextStyle(
                                        color: ColorsManager.baseColor,
                                        fontSize: 15,)
                                  )
                                ],
                              ),
                            ),
                          ) ,

                           Expanded(
                             child: Container(
                              color:  Colors.white70,
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Image.asset('assets/icons/Desk.png'),
                                    iconSize: 80,
                                    onPressed: () {},
                                  ),
                                  Text('Desk',

                                      style: TextStyle(
                                        color: ColorsManager.baseColor,
                                        fontSize: 15,)
                                  )
                                ],
                              ),
                          ),
                           )

                        ]
                    ),
                  ),

                SizedBox(
                  height:50,
                ),

                 Text('Working Spaces(${WS.length})',
                    style: TextStyle(
                      color: ColorsManager.baseColor,
                      fontSize: 20,)
                ),
                SizedBox(
                  height:10,
                ),
                 Container(
                   height: 400,
                    child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: SingleChildScrollView(

                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                   Container(
                                     height:300,
                                     child: ListView.separated(
                                         itemBuilder: (context,index) => buildWorkSpace(WS[index]),
                                       separatorBuilder:(context,index) => Container(
                                         width:double.infinity,
                                         height: 1.0,
                                         color: Colors.grey[300],
                                       ) ,
                                       itemCount: WS.length,
                                     ),
                                   )
                                  ],
                                )
                              ),
                            ),
                          ),
                        ]
                    ),
                  ),

              ],
            ),
          ),
        ),
      ),


    );

  }

  Widget  buildWorkSpace( workingSpacesmodel Sw) => Container(

    child: Column(
      children: [
        IconButton(
          icon: Image.asset('${Sw.imagepath}'),
          iconSize: 200,
          onPressed: () {},
        ),
        SizedBox(
          height:1,
        ),
        Row(
          children: [
            Expanded(child:
            Column(
              children: [
                Text('${Sw.text1}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,

                    style: TextStyle(
                      color: ColorsManager.baseColor,
                      fontSize: 15,

                    )
                ),
                Text('${Sw.text2}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,

                    style: TextStyle(
                      color: ColorsManager.baseColor,
                      fontSize: 15,

                    )
                )
              ],
            )
            ),
            SizedBox(
              width:30,
            ),
            Expanded(child:
            Column(
              children: [
                Text('${Sw.text3}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,

                    style: TextStyle(
                      color: ColorsManager.baseColor,
                      fontSize: 15,

                    )
                ),
                Text('${Sw.text4}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,

                    style: TextStyle(
                      color: ColorsManager.baseColor,
                      fontSize: 15,

                    )
                )
              ],
            )
            )
          ],
        ),
        SizedBox(
          height:5,
        ),
      ],
    ),
  );


}
