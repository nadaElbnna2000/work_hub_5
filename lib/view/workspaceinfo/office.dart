import 'package:flutter/material.dart';

import '../../utils/colors_manager.dart';

class Offices {

  final String mindscribtion;
  final String imagepath;
  final int capacity;
  final double price;

  Offices({
    required this.mindscribtion,
    required this.capacity,
    required this.imagepath,
    required this.price,
  });

}

class Office extends StatelessWidget {

  List <Offices> Of =[
    Offices(
        mindscribtion:"asdfghjsdfghjsdfghjasdfghsdfghsdfg",
        capacity: 9,
        imagepath:"assets/icons/meeting.png",
        price:100.0
    ),

    Offices(
        mindscribtion:"asdfghjsdfghjsdfghjasdfghsdfghsdfg",
        capacity: 9,
        imagepath:"assets/icons/meeting.png",
        price:100.0
    ),
    Offices(
        mindscribtion:"asdfghjsdfghjsdfghjasdfghsdfghsdfg",
        capacity: 9,
        imagepath:"assets/icons/meeting.png",
        price:100.0
    )

  ];
  @override
  Widget build(BuildContext context) {
    return  Column(

      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Offices',
          style: TextStyle(
            color: ColorsManager.baseColor,
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height:300,
          child: ListView.separated(
            itemBuilder: (context,index) =>   buildWorkSpaceoffice (Of[index]),
            separatorBuilder:(context,index) => Container(
              width:double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ) ,
            itemCount: Of.length,
          ),
        )
      ],
    );

  }

  Widget  buildWorkSpaceoffice( Offices Of) { return
    Container(

      child: Column(
        children: [
          IconButton(
            icon: Image.asset('${ Of.imagepath}'),
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
                  Text('${Of.mindscribtion}',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,

                      style: TextStyle(
                        color: ColorsManager.baseColor,
                        fontSize: 15,

                      )
                  ),
                  Text(' Capacity: ${Of.capacity}',
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
                  Text(' Price: ${Of.price}',
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