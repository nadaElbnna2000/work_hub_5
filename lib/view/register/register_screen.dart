import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work_hub_5/view/register/widgets/owner_info_widget.dart';
import 'package:work_hub_5/view/register/widgets/owner_photo_widget.dart';

import '../../providers/auth_provider.dart';
import '../../utils/colors_manager.dart';
import '../../utils/fonts_manager.dart';
import '../../utils/images_manager.dart';
import '../../utils/padding_manager.dart';
import 'widgets/text_fields_widget.dart';
import 'widgets/workspace_material_widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          title,
          style: const TextStyle(
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
      body: Consumer<AuthProvider>(builder: (context, provider, _) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: PaddingManager.padding22,
            vertical: PaddingManager.padding14,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (provider.ownerIndex == 0 || title == 'Sign Up')
                  TextFieldsWidget(
                    isOwner: title == 'Sign Up' ? false : true,
                  ),
                if (provider.ownerIndex == 1 && title != 'Sign Up')
                  const OwnerInfoWidget(),
                if (provider.ownerIndex == 2 && title != 'Sign Up')
                  const WorkSpaceMaterialWidget(),
                if (provider.ownerIndex == 3 && title != 'Sign Up')
                  const OwnerPhotoWidget(),
                if (title == 'Sign Up' || provider.ownerIndex == 3)
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: provider.checkBoxValue,
                        onChanged: provider.changeCheckBoxValue,
                      ),
                      const Text(
                        'I agree to the terms and conditions',
                        style: TextStyle(
                          color: ColorsManager.baseColor,
                          fontSize: FontsManager.font14,
                        ),
                      ),
                    ],
                  ),
                TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(
                      Colors.transparent,
                    ),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.all(0),
                    ),
                  ),
                  onPressed: title == 'Sign Up'
                      ? () {}
                      : () {
                          provider.changeOwnerIndex(context);
                        },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                      color: ColorsManager.baseColor50,
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: PaddingManager.padding12,
                    ),
                    margin: const EdgeInsets.symmetric(
                      horizontal: PaddingManager.padding30,
                    ),
                    child: Text(
                      title == 'Sign Up'
                          ? 'Sign Up'
                          : provider.ownerIndex != 3
                              ? 'Next'
                              : 'Sign Up',
                      style: const TextStyle(
                        color: ColorsManager.baseColor,
                        fontSize: FontsManager.font16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                if (title == 'Sign Up')
                  const SizedBox(
                    height: 25,
                  ),
                if (title == 'Sign Up')
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Have an account?',
                        style: TextStyle(
                          color: ColorsManager.baseColor.withOpacity(0.5),
                          fontSize: FontsManager.font14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.pushAndRemoveUntil(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (ctx) => const LoginScreen(),
                          //   ),
                          //   (Route<dynamic> route) => false,
                          // );
                        },
                        child: const Text(
                          ' Login',
                          style: TextStyle(
                            color: ColorsManager.baseColor,
                            fontSize: FontsManager.font14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                if (title == 'Sign Up')
                  const SizedBox(
                    height: 5,
                  ),
                if (title == 'Sign Up')
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WorkSpace Owner?',
                        style: TextStyle(
                          color: ColorsManager.baseColor.withOpacity(0.5),
                          fontSize: FontsManager.font14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          provider.resetOwnerIndex();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (ctx) => const RegisterScreen(
                                title: 'WorkSpace Owner Sign Up',
                              ),
                            ),
                          );
                        },
                        child: const Text(
                          ' Sign Up',
                          style: TextStyle(
                            color: ColorsManager.baseColor,
                            fontSize: FontsManager.font14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                if (title != 'Sign Up')
                  const SizedBox(
                    height: 25,
                  ),
                if (title != 'Sign Up')
                  SizedBox(
                    height: 12,
                    child: Row(
                      children: [
                        for (int index = 0; index < 4; index++)
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                horizontal: PaddingManager.padding2,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  5,
                                ),
                                color: index == provider.ownerIndex
                                    ? const Color(0xffD9D9D9)
                                    : const Color(0xffF7F6F6),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
