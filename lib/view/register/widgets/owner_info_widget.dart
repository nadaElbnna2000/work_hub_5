import 'package:flutter/material.dart';
import '../../../utils/colors_manager.dart';
import '../../../utils/fonts_manager.dart';
import '../../../utils/images_manager.dart';
import '../../../view/register/widgets/owner_text_fields_widget.dart';

class OwnerInfoWidget extends StatelessWidget {
  const OwnerInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const OwnerTextFieldsWidget(),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Working Hours',
          style: TextStyle(
              color: ColorsManager.baseColor,
              fontSize: FontsManager.font14,
              fontWeight: FontWeight.w500),
        ),
        for (int index = 0; index < 2; index++)
          TextButton(
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(
                Colors.transparent,
              ),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 Text(
                  index==0?'Start Time':'End Time',
                  style:const TextStyle(
                    color: ColorsManager.baseColor,
                    fontSize: FontsManager.font12,
                  ),
                ),
                Container(
                  height: 22,
                  width: 50,
                  alignment: Alignment.center,
                  color: ColorsManager.grey90,
                  child: const Text(
                    '00:00',
                    style: TextStyle(
                      color: ColorsManager.baseColor,
                      fontSize: FontsManager.font12,
                    ),
                  ),
                ),
                SizedBox(
                  height: 22,
                  width: 66,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.center,
                          color: ColorsManager.grey90,
                          child: Text(
                            index == 0 ? 'AM' : 'PM',
                            style: const TextStyle(
                              color: ColorsManager.baseColor,
                              fontSize: FontsManager.font12,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.center,
                          color: ColorsManager.baseColor,
                          child: Image.asset(
                            ImagesManager.rectangle,
                            scale: 3,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
