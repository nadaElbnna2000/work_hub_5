import 'package:flutter/material.dart';

import '../../utils/colors_manager.dart';
import '../../utils/fonts_manager.dart';
import '../../utils/images_manager.dart';
import '../../utils/padding_manager.dart';

class ConfirmationScreen extends StatelessWidget {
  ConfirmationScreen({Key? key, required this.data}) : super(key: key);
  final List data;
  final List<String> titles = [
    'Price:',
    'Reservation Number:',
    'From:',
    'To:',
    'Contact Number:'
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
          'Confirmation',
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
        child: ListView.separated(
          itemBuilder: (ctx, index) => index == titles.length
              ? TextButton(
            onPressed: () {},
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.transparent),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorsManager.purpleDarkColor,
              ),
              padding:  EdgeInsets.symmetric(
                  horizontal: PaddingManager.padding30,
                  vertical: PaddingManager.padding12
              ),
              child: const Text(
                'Navigate',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: FontsManager.font18,
                ),
              ),
            ),
          )
              : Container(
            padding: const EdgeInsets.symmetric(
                horizontal: PaddingManager.padding8),
            alignment: Alignment.centerLeft,
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: ColorsManager.grey70,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  titles[index],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: FontsManager.font16,
                    color: ColorsManager.baseColor,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  data[index],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: FontsManager.font16,
                    color: ColorsManager.purpleColor,
                  ),
                ),
                if (index == 0)
                  const SizedBox(
                    width: 4,
                  ),
                if (index == 0)
                  const Text(
                    'EGP',
                  ),
              ],
            ),
          ),
          separatorBuilder: (ctx, index) => const SizedBox(
            height: PaddingManager.padding12,
          ),
          itemCount: titles.length + 1,
        ),
      ),
    );
  }
}