import 'package:flutter/material.dart';

import '../../utils/colors_manager.dart';
import '../../utils/fonts_manager.dart';
import '../../utils/images_manager.dart';
import '../../utils/padding_manager.dart';
import '../choose_payment_method/choose_payment_method_screen.dart';

class AddVisaCardScreen extends StatelessWidget {
  const AddVisaCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Add Your Visa Card',
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int index = 0; index < 2; index++)
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      index == 0
                          ? '  Credit card number'
                          : '  Card holder name',
                      style: const TextStyle(
                        color: ColorsManager.baseColor,
                        fontSize: FontsManager.font16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: index == 0
                            ? '  enter card number'
                            : '  enter holder name',
                        border: InputBorder.none,
                        fillColor: ColorsManager.grey70,
                        filled: true,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              SizedBox(
                height: 120,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            ' CCV',
                            style: TextStyle(
                              color: ColorsManager.baseColor,
                              fontSize: FontsManager.font16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: 'CCV',
                                    border: InputBorder.none,
                                    fillColor: ColorsManager.grey70,
                                    filled: true,
                                  ),
                                ),
                              ),
                              const Expanded(
                                child: SizedBox(),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            ' Expiration Date',
                            style: TextStyle(
                              color: ColorsManager.baseColor,
                              fontSize: FontsManager.font16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: 'MM',
                                    border: InputBorder.none,
                                    fillColor: ColorsManager.grey70,
                                    filled: true,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Expanded(
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: 'YY',
                                    border: InputBorder.none,
                                    fillColor: ColorsManager.grey70,
                                    filled: true,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) =>  ChoosePaymentMethodScreen(),
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: PaddingManager.padding50,
                          vertical: PaddingManager.padding12),
                      child: const Text(
                        'Confirm',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: FontsManager.font18,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}