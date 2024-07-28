import 'package:flutter/material.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/vertical_image_text.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/image_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';

class KamariatiHomeCategory extends StatelessWidget {
  const KamariatiHomeCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = KamariatiHelperFunctions.isDarkMode(context);
    return SizedBox(
      height: 150,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return KamariatiVerticalImageText(
            image: KamariatiImages.kamariatiSkincareIcon, 
            textColor: dark ? KamariatiColors.light : KamariatiColors.dark, 
            title: KamariatiTexts.homeCategoryName1, 
            onTap: (){},
          );
        },
        ),
    );
  }
}