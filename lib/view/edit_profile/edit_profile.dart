import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/colors_manager.dart';
import '../../utils/fonts_manager.dart';
import '../../utils/padding_manager.dart';
import '../choose_payment_method/choose_payment_method_screen.dart';
import '../settings/settings.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {


  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailAddressController = TextEditingController();
  var phoneController = TextEditingController();




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
                        Navigator.pop(context);

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
                controller: firstNameController,
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
                controller: lastNameController,
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
                controller: emailAddressController,
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
                controller: phoneController,
                decoration: InputDecoration(
                  hintText: '01091280003',
                  border: InputBorder.none,
                  fillColor: ColorsManager.grey70,
                  filled: true,
                ),
              ),



              SizedBox(
                height: 35,
              ),




              Center(
                child: TextButton(
                  onPressed: () {
                    print(firstNameController.text);
                    print(lastNameController.text);
                    print(emailAddressController.text);
                    print(phoneController.text);

                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (ctx) =>  ChoosePaymentMethodScreen(),
                    //   ),
                    // );
                  },
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  child: Container(

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorsManager.baseColor,
                    ),
                    padding:  EdgeInsets.symmetric(
                        horizontal: PaddingManager.padding50,
                        vertical: PaddingManager.padding12),
                    child: const Text(
                      'save',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: FontsManager.font26,
                      ),
                    ),
                  ),
                ),
              ),






















            ],
          ),
        ),
      ),
    );
  }
}
