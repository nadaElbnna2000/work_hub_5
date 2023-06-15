import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work_hub_5/view/home/my_home_screen.dart';

import '../../utils/colors_manager.dart';
import '../settings/settings.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);

                  },
                  child: Image(
                    width: 75,
                      height: 60,
                      image: AssetImage
                        (
                      'assets/icons/arrow_back.png',

                  )),
                ),

              ],
            ),
          ),

          Center(
          child: CircleAvatar(
           backgroundImage: AssetImage(
               'assets/images/profile.jpg',
           ),
            radius: 80,
          ), //CircleAvatar


    ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Nada Elbanna',
            style: TextStyle(
              fontSize: 20,
              color: ColorsManager.baseColor,
            ),
          ),

          SizedBox(
            height: 25,
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
              Icon(
               Icons.email_outlined,
               size: 30,
                color: ColorsManager.baseColor,
              ),
                SizedBox(
                  width: 25,
                ),
                Text(
                    'nadaelbanna105@gmail.com',
                  style: TextStyle(
                    fontSize: 20,
                    color: ColorsManager.baseColor
                  ),
                ),
              ],
            ),

          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Icon(
                  Icons.phone,
                  size: 30,
                  color: ColorsManager.baseColor,
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  '01091280003',
                  style: TextStyle(
                      fontSize: 20,
                      color: ColorsManager.baseColor
                  ),
                ),
              ],
            ),

          ),
          SizedBox(
            height: 40,
          ),


          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Settings()),
                    );
                  },
                  child: Text(
                      'Change Password',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.redAccent,
                    ),

                  ),
                ),

              ],
            ),

          ),






          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Settings()),
                    );
                  },
                  child: Text(
                    'Delete Account',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.redAccent,
                    ),

                  ),
                ),

              ],
            ),

          ),





          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Settings()),
                    );
                  },
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.redAccent,
                    ),

                  ),
                ),

              ],
            ),

          ),





          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Settings()),
                    );
                  },
                  child: Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.redAccent,
                    ),

                  ),
                ),

              ],
            ),

          ),




        ],
      ),
    );
  }
}
