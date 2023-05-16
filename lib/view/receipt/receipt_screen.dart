import 'package:flutter/material.dart';

import '../../utils/colors_manager.dart';
import '../../utils/fonts_manager.dart';
import '../../utils/images_manager.dart';
import '../../utils/padding_manager.dart';

class ReceiptScreen extends StatelessWidget {
  ReceiptScreen({Key? key, required this.data}) : super(key: key);
  final List data;
  final List<String> titles = [
    'Price:',
    'Date:',
    'Start time:',
    'End time:',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Receipt',
          style: TextStyle(
            color: ColorsManager.baseColor,
          ),
        ),
        leading: TextButton(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(
              Colors.transparent,
            ),
          ),
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
          child: Image.asset(
            ImagesManager.arrowBack,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: PaddingManager.padding12,
          vertical: PaddingManager.padding20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Traning Room 1',
              style: TextStyle(
                color: ColorsManager.baseColor,
                fontSize: FontsManager.font18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            for (int index = 0; index < titles.length; index++)
              Container(
                alignment: Alignment.centerLeft,
                width: double.infinity,
                height: 45,
                decoration: BoxDecoration(
                  border: Border.symmetric(
                    horizontal: BorderSide(
                      color: Colors.black,
                      width: index == 0 || index == titles.length - 1 ? 2 : 1,
                    ),
                  ),
                ),
                child: Text(
                  '${titles[index]} ${data[index]}',
                  style: const TextStyle(
                    color: ColorsManager.baseColor,
                    fontWeight: FontWeight.w500,
                    fontSize: FontsManager.font16,
                  ),
                ),
              ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.transparent),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorsManager.purpleDarkColor,
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: PaddingManager.padding12,
                ),
                width: 180,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children:const [
                    SizedBox(),
                    Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: FontsManager.font18,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 18,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}