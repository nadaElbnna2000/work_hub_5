import 'package:flutter/material.dart';
import 'package:work_hub_5/view/settings/settings.dart';

import '../../utils/colors_manager.dart';



class  BookingWorkspace extends StatelessWidget {
  const BookingWorkspace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start ,
          children: [
            Image(
                  image:AssetImage('assets/images/Rectangle 1.png'),
                  fit:BoxFit.fill,
                  width: 392,
                  height:200 ,
                    ),
            SizedBox(
                  height: 20,
                ),
            Text(
              ' Traning Room 1 inside Empire \n Traning ...',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              ' About The Hall',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: ColorsManager.baseColor30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              ' Metting room with 15 peope, eqiped with \n air conditioning, internet and projector.',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              ' Amenities',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: ColorsManager.baseColor30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    ' wifi',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Printer,Sacnner',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    ' parking',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Prayer room',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Cafeteria',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Smart Board',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Projector',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'IT support',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              ' Location',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: ColorsManager.baseColor30,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Image(
              image:AssetImage('assets/images/Rectangle 2.png'),
              fit:BoxFit.fill,
              width: 392,
              height:200 ,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    '   171.0 EGB/\n   HOUR',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 150,
                child: TextButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Settings()),
                    );
                  },
                  child: Text(
                    'Select Date',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
    ),
        ),
    );
  }





}