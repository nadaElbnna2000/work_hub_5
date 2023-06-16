import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../utils/colors_manager.dart';
import '../../utils/fonts_manager.dart';
import '../settings/settings.dart';


class workingSpacesRating {
  final String username;
  final double rating;

  workingSpacesRating({
    required this.username,
    required this.rating,


  });

}


class workspacehome extends StatelessWidget {
  const workspacehome({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    List<workingSpacesRating> WS =[
      workingSpacesRating(
        username:'FAREDA',
        rating: 4.6,


      ),
      workingSpacesRating(
        username:'BEBO',
        rating: 4.0,


      ),workingSpacesRating(
        username:'NADA',
        rating: 3.0,


      ),
      workingSpacesRating(
        username:'HADER',
        rating: 4.5,


      ),
      workingSpacesRating(
        username:'HADER',
        rating: 4.5,


      ),workingSpacesRating(
        username:'HADER',
        rating: 4.5,


      ),
      workingSpacesRating(
        username:'BEBO',
        rating: 4.0,


      ),workingSpacesRating(
        username:'NADA',
        rating: 3.0,


      ),
      workingSpacesRating(
        username:'HADER',
        rating: 4.5,


      ),
      workingSpacesRating(
        username:'HADER',
        rating: 4.5,


      ),workingSpacesRating(
        username:'HADER',
        rating: 4.5,
      ),
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
                      'Home',
                      style: TextStyle(
                        color: ColorsManager.baseColor,
                        fontSize: 30,
                      ),
                    ),

                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text('Working Spaces Name',
                    style: TextStyle(
                      color: ColorsManager.baseColor,
                      fontSize: 20,)
                ),
                Image(
              image:
            AssetImage('assets/icons/wsimage.png'),
              height: 250,
            ),
                SizedBox(
                  height: 2,
                ),
                Text('Ratings ',
                    style: TextStyle(
                      color: ColorsManager.baseColor,
                      fontSize: 30,
                    ),
                ),

                Container(
                  height:1000,
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
            ),
          ),
        ),
      ),


    );
  }

}

Widget  buildWorkSpace(workingSpacesRating sw ) => Container(

  child: Container(
    height: 50,
    child: Row(
      children: [
        Text('${sw.username}',
            style: TextStyle(
              color: ColorsManager.baseColor,
              fontSize: 20,)
        ),
        SizedBox(
         width:10,),

        SizedBox(
          width:20,),
        RatingBarIndicator(
            rating: sw.rating,
            itemCount: 5,
            itemSize: 30.0,
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            )
        )

      ],
    ),
  ),
);