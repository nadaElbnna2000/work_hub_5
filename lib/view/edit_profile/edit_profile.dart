import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/colors_manager.dart';
import '../../utils/fonts_manager.dart';
import '../settings/settings.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

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
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  children: [

                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Settings()),
                        );
                      },
                      child: Image(
                        width: 60,
                       height: 50,

                       image: AssetImage(
                          'assets/icons/arrow_back.png',

                        ),
                      ),
                    ),

                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Edit Profile',
                      style: TextStyle(
                        color: ColorsManager.primaryColor,
                        fontSize: 30,
                      ),
                    ),

                  ],
                ),
              ),

              SizedBox(
                height: 12,
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/profile.jpg',
                  ),
                  radius: 70,
                ), //CircleAvatar

              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Settings()),
                    );
                  },
                  child: Text(
                    'change photo',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.redAccent,
                    ),

                  ),
                ),
              ),

              SizedBox(
                height: 25,
              ),

              Text(
                'First name',
                style: TextStyle(
                  color: ColorsManager.primaryColor,
                  fontSize: 20,
                ),
              ),

              SizedBox(
                height: 10,
              ),

              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Nada',
                  border: InputBorder.none,
                  fillColor: ColorsManager.grey70,
                  filled: true,
                ),
              ),

              SizedBox(
                height:20 ,
              ),

              Text(
                'Last name',
                style: TextStyle(
                  color: ColorsManager.primaryColor,
                  fontSize: 20,
                ),
              ),

              SizedBox(
                height: 10,
              ),

              TextFormField(
                decoration: InputDecoration(
                  hintText: ' Elbanna',
                  border: InputBorder.none,
                  fillColor: ColorsManager.grey70,
                  filled: true,
                ),
              ),

              SizedBox(
                height:20 ,
              ),

              Text(
                'Email address',
                style: TextStyle(
                  color: ColorsManager.primaryColor,
                  fontSize: 20,
                ),
              ),

              SizedBox(
                height: 10,
              ),

              TextFormField(
                decoration: InputDecoration(
                  hintText: 'nadaelbanna105@gmail.com',
                  border: InputBorder.none,
                  fillColor: ColorsManager.grey70,
                  filled: true,
                ),
              ),

              SizedBox(
                height:20 ,
              ),

              Text(
                'phone',
                style: TextStyle(
                  color: ColorsManager.primaryColor,
                  fontSize: 20,
                ),
              ),

              SizedBox(
                height: 10,
              ),

              TextFormField(
                decoration: InputDecoration(
                  hintText: '01091280003',
                  border: InputBorder.none,
                  fillColor: ColorsManager.grey70,
                  filled: true,
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
