import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:work_hub_5/view/settings/settings.dart';
import 'package:work_hub_5/view/home/my_home_screen.dart';
import '../../utils/colors_manager.dart';
import '../../utils/fonts_manager.dart';



class  Ratingg extends StatelessWidget {
  var reviewController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       elevation: 0,
       backgroundColor: Colors.grey[200],
       title: const Text(
         'Rate&Review',
         style: TextStyle(
           color: ColorsManager.baseColor,
           fontSize:25,
         ),
       ),
       leading:TextButton(
         onPressed: (){
         Navigator.push(
           context,
           MaterialPageRoute(builder: (context) =>  MyHomeScreen()),);},
      child: Image(
        image:AssetImage('assets/icons/arrow_back.png'),
      ),
      ),
    ),
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start ,
          children: [
            SizedBox(
            height: 20,
          ),
            Text(
            ' Please Rate Our Service',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w800,
            ),
          ),
            SizedBox(
            height: 20,
          ),
            Center(
            child: Container(
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: RatingBar.builder(
                    initialRating: 3,
                    allowHalfRating: true,
                    itemPadding: EdgeInsets.symmetric(horizontal: 3),
                    itemBuilder: (context, _) => Icon(
                  Icons.star_rounded,
                   color: Colors.black,),
                    onRatingUpdate: (rating){
                     print(rating);
                    }),
              ),
            ),
          ),
            SizedBox(
            height: 40,
          ),
            Text(
            '     Any review',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w800,
            ),
          ),
            SizedBox(
            height: 20,
          ),
            Center(
              child: Container(
                height: 100,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: ColorsManager.light_grey_1,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: reviewController,
                        decoration: InputDecoration(
                          hintText: 'Type your review here',
                          hintStyle: TextStyle(
                              color: Colors.grey.withOpacity(1.0),
                              fontSize: FontsManager.font12),
                        ),
                      ),
                    ],
                  ),
                ) ,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: Container(

                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 220,
                child: MaterialButton(
                  onPressed: (){
                    print(reviewController.text);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  MyHomeScreen()),
                    );
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
            height: 260,
          ),
            Center(
            child: Container(
              decoration: BoxDecoration(
                color: ColorsManager.light_grey_1,
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
              width: 120,
              height: 10,
            ),
          ),
        ],
        ),
      )
    );

  }
}