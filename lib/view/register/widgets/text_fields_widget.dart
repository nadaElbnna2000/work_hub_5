import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/auth_provider.dart';
import '../../../utils/colors_manager.dart';
import '../../../utils/fonts_manager.dart';
import '../../../utils/padding_manager.dart';

class TextFieldsWidget extends StatelessWidget {
  const TextFieldsWidget({Key? key, required this.isOwner}) : super(key: key);
  final bool isOwner;

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(builder: (context, provider, _) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (int index = 0;
              index < provider.registerFieldsList.length;
              index++)
            if (!(index == 3 && isOwner))
              Container(
                margin: const EdgeInsets.only(
                  bottom: PaddingManager.padding18,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          provider.registerFieldsList[index].labelText,
                          style: const TextStyle(
                            color: ColorsManager.baseColor,
                            fontWeight: FontWeight.w500,
                            fontSize: FontsManager.font14,
                          ),
                        ),
                      ],
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: provider.registerFieldsList[index].hintText,
                        hintStyle: TextStyle(
                          fontSize: FontsManager.font12,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
        ],
      );
    });
  }
}
