import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/colors_manager.dart';
import '../../utils/fonts_manager.dart';
import '../settings/settings.dart';

class DeleteAccount extends StatelessWidget {
  const DeleteAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
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
                          icon: Icon(Icons.arrow_back_ios_new_outlined)
                      ),
                      SizedBox(
                        width: 5,

                      ),
                      Text(
                        'Delete Account',
                        style: TextStyle(
                            fontSize: 32,
                            color: ColorsManager.baseColor

                        ),
                      ),

                    ],
                  ),

                  SizedBox(
                    height: 50,
                  ),


                  Container(
                    height: 230,
                    width: 320,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      color: ColorsManager.light_grey_1,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'confirm that\'s you',
                            style: TextStyle(

                              fontSize: 22,
                              color: ColorsManager.baseColor,
                            ),
                          ),

                          SizedBox(
                            height: 30,
                          ),

                           TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.lock_outline,
                                color: ColorsManager.baseColor,
                              ),
                              hintText: 'Enter Your Password',
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







                        ],
                      ),
                    ) ,
                  ),


                  SizedBox(
                    height: 80,
                  ),

                  Row(
                    children: [

                      SizedBox(
                        width: 220,
                      ),
                      Container(

                        height: 60,
                        width: 120,
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

                    ],
                  ),



                  SizedBox(

                    height: 150,
                  ),

                  Container(

                    decoration: BoxDecoration(
                      color: ColorsManager.light_grey_1,
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    width: 120,
                    height: 10,
                  ),


                ],
              ),
            ),
          ),

    );
  }
}
