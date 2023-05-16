import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/colors_manager.dart';
import '../../utils/fonts_manager.dart';
import '../settings/settings.dart';

class VisaCard extends StatelessWidget {
  const VisaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              SizedBox(
                height: 20,
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
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                      )
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Add Your Visa Card',
                    style: TextStyle(
                        fontSize: 32,
                        color: ColorsManager.baseColor

                    ),
                  ),


                ],

              ),


              SizedBox(
                height: 40,
              ),
              Text(
                'Credit card number',
                style: TextStyle(
                    fontSize: 25,
                    color: ColorsManager.baseColor

                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(

                  hintText: 'Enter card number',
                  hintStyle: TextStyle(
                      color: Colors.grey.withOpacity(0.5),
                      fontSize: FontsManager.font12),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorsManager.baseColor,
                    ),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorsManager.baseColor,
                    ),
                  ),
                ),
              ),


              SizedBox(
                height: 30,
              ),
              Text(
                'Card holder name',
                style: TextStyle(
                    fontSize: 25,
                    color: ColorsManager.baseColor

                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(

                  hintText: 'Enter your name',
                  hintStyle: TextStyle(
                      color: Colors.grey.withOpacity(0.5),
                      fontSize: FontsManager.font12),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorsManager.baseColor,
                    ),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorsManager.baseColor,
                    ),
                  ),
                ),
              ),


              SizedBox(
                height: 40,
              ),


              Row(
                children: [

                  Text(
                    'CCV',
                    style: TextStyle(
                        fontSize: 25,
                        color: ColorsManager.baseColor

                    ),
                  ),

                  Spacer(),


                  Text(
                    'Expiration Date',
                    style: TextStyle(
                        fontSize: 25,
                        color: ColorsManager.baseColor

                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 10,
              ),

              Row(
                children: [

                  Container(
                    width: 80,
                    height: 40,
                    child: TextFormField(

                      keyboardType: TextInputType.number,

                      decoration: InputDecoration(


                        hintText: 'ccv',
                        hintStyle: TextStyle(
                            color: Colors.grey.withOpacity(0.5),
                            fontSize: FontsManager.font12),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorsManager.baseColor,
                          ),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorsManager.baseColor,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Spacer(),

                  Container(
                    width: 70,
                    height: 40,
                    child: TextFormField(

                      keyboardType: TextInputType.datetime,

                      decoration: InputDecoration(

                        hintText: 'MM',
                        hintStyle: TextStyle(
                            color: Colors.grey.withOpacity(0.5),
                            fontSize: FontsManager.font12),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorsManager.baseColor,
                          ),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorsManager.baseColor,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 70,
                    height: 40,
                    child: TextFormField(
                      keyboardType: TextInputType.datetime,

                      decoration: InputDecoration(

                        hintText: 'YY',
                        hintStyle: TextStyle(
                            color: Colors.grey.withOpacity(0.5),
                            fontSize: FontsManager.font12),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorsManager.baseColor,
                          ),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorsManager.baseColor,
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),

              SizedBox(
                height: 50,
              ),

              TextButton(

                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(
                    Colors.transparent,
                  ),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.all(0),
                  ),
                ),
                onPressed: () {},
                child: Center(
                  child: Container(

                    height: 60,
                    width: 150,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                      color: ColorsManager.baseColor,
                    ),

                    child: const Text(
                      'Confirm',
                      style: TextStyle(
                        color: ColorsManager.white70,
                        fontSize: FontsManager.font20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 80,
              ),
              Row(
                children: [

                  SizedBox(
                    width: 10,
                  ),
                  Container(

                    decoration: BoxDecoration(
                      color: ColorsManager.light_grey_1,
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    width: 80,
                    height: 10,
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(

                    decoration: BoxDecoration(
                      color: ColorsManager.light_grey_1,
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    width: 80,
                    height: 10,
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(

                    decoration: BoxDecoration(
                      color: ColorsManager.grey90,
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    width: 80,
                    height: 10,
                  ),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}