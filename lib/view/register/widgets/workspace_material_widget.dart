import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/auth_provider.dart';
import '../../../utils/colors_manager.dart';
import '../../../utils/fonts_manager.dart';
import '../../../utils/padding_manager.dart';

class WorkSpaceMaterialWidget extends StatelessWidget {
  const WorkSpaceMaterialWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(builder: (context, provider, _) {
      return Column(
        children: [
          for (int index = 0;
              index < provider.ownerMaterialList.length;
              index++)
            ExpansionTile(
              title: Text(
                provider.ownerMaterialList[index].title,
                style: const TextStyle(
                  color: ColorsManager.baseColor70,
                ),
              ),
              iconColor: ColorsManager.baseColor,
              backgroundColor: ColorsManager.grey70,
              children: [
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: PaddingManager.padding6,
                    vertical: PaddingManager.padding16,
                  ),
                  child: Row(
                    children: [
                      for (int innerIndex = 0; innerIndex < 3; innerIndex++)
                        innerIndex == 1
                            ? const SizedBox(
                                width: 12,
                              )
                            : Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      provider
                                          .ownerMaterialList[index]
                                          .innerList[
                                              innerIndex == 2 ? 1 : innerIndex]
                                          .title,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: FontsManager.font14,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.black,
                                        ),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: PaddingManager.padding4,
                                        vertical: PaddingManager.padding4,
                                      ),
                                      child: Row(
                                        children: [
                                          const Spacer(),
                                          const Spacer(),
                                          Text(
                                            '${provider.getCount(index, innerIndex)}',
                                            style: const TextStyle(
                                              color: Colors.grey,
                                              fontSize: FontsManager.font12,
                                            ),
                                          ),
                                          const Spacer(),
                                          const Spacer(),
                                          const Spacer(),
                                          GestureDetector(
                                            onTap: () {
                                              provider.add(
                                                  index,
                                                  innerIndex == 2
                                                      ? 1
                                                      : innerIndex);
                                            },
                                            child: const Icon(
                                              Icons.arrow_circle_up,
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              provider.min(
                                                  index,
                                                  innerIndex == 2
                                                      ? 1
                                                      : innerIndex);
                                            },
                                            child: const Icon(
                                              Icons.arrow_circle_down,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                    ],
                  ),
                ),
              ],
            ),
          const SizedBox(
            height: 20,
          ),
        ],
      );
    });
  }
}
