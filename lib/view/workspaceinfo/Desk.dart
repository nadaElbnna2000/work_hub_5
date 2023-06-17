import 'package:flutter/material.dart';

import '../../utils/colors_manager.dart';

class Desk{
  final String mindscribtion;
  final String imagepath;
  final String capacity;
  final double price;

  Desk({
    required this.mindscribtion,
    required this.capacity,
    required this.imagepath,
    required this.price,
  });

}

class Desks extends StatelessWidget {

  List<Desk> De =[
    Desk(
        mindscribtion:"asdfghjsdfghjsdfghjasdfghsdfghsdfg",
        capacity: 'one persone',
        imagepath:"assets/icons/Desk.png",
        price:10.0
    ),
    Desk(
        mindscribtion:"hjsdfghjsdfghjasdfghsdfghsdfg",
        capacity: 'one persone',
        imagepath:"assets/icons/Desk.png",
        price:10.0
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return  Column(

      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Desks',
          style: TextStyle(
            color: ColorsManager.baseColor,
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Container(
          height:300,
          child: ListView.separated(
            itemBuilder: (context,index) =>buildWorkSpaceDesk  (De[index]),
            separatorBuilder:(context,index) => Container(
              width:double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ) ,
            itemCount: De.length,
          ),
        )
      ],
    );
  }
  Widget  buildWorkSpaceDesk( Desk De) {
    return
    Container(

      child: Column(
        children: [
          IconButton(
            icon: Image.asset('${ De.imagepath}'),
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
                  Text('${De.mindscribtion}',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,

                      style: TextStyle(
                        color: ColorsManager.baseColor,
                        fontSize: 15,

                      )
                  ),
                  Text(' Capacity: ${De.capacity}',
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
                  Text(' Price: ${De.price}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,

                      style: TextStyle(
                        color: ColorsManager.baseColor,
                        fontSize: 15,

                      )
                  ),
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
}