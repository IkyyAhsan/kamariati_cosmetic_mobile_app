import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/widgets/brand_title_text.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/enums.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';

class KamariatiBrandTitleWithVerificationIcon extends StatelessWidget {
  const KamariatiBrandTitleWithVerificationIcon({
    super.key, 
    required this.title, 
    this.maxLines = 1, 
    this.textColor, 
    this.iconColor = KamariatiColors.accent, 
    this.textAlign = TextAlign.center, 
    this.brandTextSizes = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: KamariatiBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSizes: brandTextSizes,
          )
        ),
        horizontalSpaces(KamariatiSizes.xs),
        Icon(
          FluentIcons.checkmark_circle_24_filled, 
          color: iconColor,
          size: KamariatiSizes.iconXs,
        ),
      ],
    );
  }
}