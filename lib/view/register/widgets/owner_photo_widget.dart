import 'package:flutter/material.dart';
import 'package:work_hub_5/utils/size_manager.dart';

import '../../../utils/colors_manager.dart';
import '../../../utils/fonts_manager.dart';
import '../../../utils/images_manager.dart';

class OwnerPhotoWidget extends StatelessWidget {
  const OwnerPhotoWidget({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        const SizedBox(
            height:30
        ),
        const Text(
          'Add WorkingSpace Photos',
          style: TextStyle(
            color: ColorsManager.baseColor,
            fontSize: FontsManager.font16,
          ),
        ),
        const SizedBox(
          height:10
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          clipBehavior: Clip.antiAlias,
          height: 30.appWidth(context),
          width: 30.appWidth(context),
          child: Image.asset(
            ImagesManager.camera,
          ),
        ),
      ],
    );
  }
}
