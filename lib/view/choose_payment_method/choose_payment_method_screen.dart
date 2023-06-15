import 'package:flutter/material.dart';

import '../../utils/colors_manager.dart';
import '../../utils/fonts_manager.dart';
import '../../utils/images_manager.dart';
import '../../utils/padding_manager.dart';

class ChoosePaymentMethodScreen extends StatefulWidget {
  ChoosePaymentMethodScreen({Key? key}) : super(key: key);


  @override
  State<ChoosePaymentMethodScreen> createState() =>
      _ChoosePaymentMethodScreenState();
}

class _ChoosePaymentMethodScreenState extends State<ChoosePaymentMethodScreen> {
  String? groupValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Choose Payment method',
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
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            for (int index = 0; index < 2; index++)
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: RadioListTile(
                  value: index.toString(),
                  groupValue: groupValue,
                  onChanged: (value) {
                    groupValue = value as String?;
                    setState(() {});
                  },
                  title: Text(
                    index == 0 ? 'Pay at Host' : 'Pay via Visa Card',
                    style: const TextStyle(
                      color: ColorsManager.baseColor,
                      fontWeight: FontWeight.bold,
                      fontSize: FontsManager.font16,
                    ),
                  ),
                  tileColor: ColorsManager.grey50,
                ),
              ),
            const SizedBox(
              height: 120,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => ChoosePaymentMethodScreen(),
                  ),
                );
              },
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.transparent),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorsManager.purpleDarkColor,
                ),
                padding:  EdgeInsets.symmetric(
                    horizontal: PaddingManager.padding50,
                    vertical: PaddingManager.padding12),
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: FontsManager.font18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}