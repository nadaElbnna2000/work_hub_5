import 'package:flutter/material.dart';

import '../../utils/colors_manager.dart';

class Room {
  final String mindscribtion;
  final String imagepath;
  final int capacity;
  final double price;

  Room({
    required this.mindscribtion,
    required this.capacity,
    required this.imagepath,
    required this.price,
  });

}


class rooms extends StatelessWidget {


  List< Room> RO =[
    Room(
        mindscribtion:"asdfghjsdfghjsdfghjasdfghsdfghsdfg",
        capacity: 9,
        imagepath:"assets/icons/meeting.png",
        price:100.0
    ),

    Room(
        mindscribtion:"asdfghjsdfghjsdfghjasdfghsdfghsdfg",
        capacity: 9,
        imagepath:"assets/icons/meeting.png",
        price:100.0
    ),
    Room(
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
          'Rooms',
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
            itemBuilder: (context,index) => buildWorkSpaceroom (RO[index]),
            separatorBuilder:(context,index) => Container(
              width:double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ) ,
            itemCount: RO.length,
          ),
        )
      ],
    );
  }

  Widget  buildWorkSpaceroom( Room RO) { return
    Container(

      child: Column(
        children: [
          IconButton(
            icon: Image.asset('${ RO.imagepath}'),
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
                  Text('${RO.mindscribtion}',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,

                      style: TextStyle(
                        color: ColorsManager.baseColor,
                        fontSize: 15,

                      )
                  ),
                  Text(' Capacity: ${RO.capacity}',
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
                  Text(' Price: ${RO.price}',
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
