import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/auth_provider.dart';
import '../../../utils/colors_manager.dart';
import '../../../utils/fonts_manager.dart';
import '../../../utils/padding_manager.dart';
import '../../register/register_screen.dart';

class LoginCardWidget extends StatelessWidget {
  const LoginCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(builder: (context, provider, _) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            PaddingManager.padding8,
          ),
          color: ColorsManager.white70,
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: PaddingManager.padding26,
          vertical: PaddingManager.padding20,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: PaddingManager.padding12,
          vertical: PaddingManager.padding14,
        ),
        child: Form(
          key: provider.formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Email',
                style: TextStyle(
                  color: ColorsManager.baseColor,
                  fontSize: FontsManager.font16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 45,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      color: ColorsManager.baseColor,
                    ),
                    hintText: 'Enter Your Email',
                    hintStyle: TextStyle(
                        color: Colors.grey.withOpacity(0.5),
                        fontSize: FontsManager.font12),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorsManager.baseColor,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorsManager.baseColor,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Password',
                style: TextStyle(
                  color: ColorsManager.baseColor,
                  fontSize: FontsManager.font16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 45,
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                      color: ColorsManager.baseColor,
                    ),
                    hintText: 'Enter Your Password',
                    hintStyle: TextStyle(
                        color: Colors.grey.withOpacity(0.5),
                        fontSize: FontsManager.font12),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorsManager.baseColor,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorsManager.baseColor,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(
                        Colors.transparent,
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                        color: ColorsManager.baseColor.withOpacity(0.5),
                        fontSize: FontsManager.font12,
                        fontWeight: FontWeight.w500,
                      ),
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
                onPressed: () {},
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
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: ColorsManager.baseColor,
                      fontSize: FontsManager.font16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      color: ColorsManager.baseColor.withOpacity(0.5),
                      fontSize: FontsManager.font12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => const RegisterScreen(
                            title: 'Sign Up',
                          ),
                        ),
                      );
                    },
                    child: const Text(
                      ' Sign Up.',
                      style: TextStyle(
                        color: ColorsManager.baseColor,
                        fontSize: FontsManager.font12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
