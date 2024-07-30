import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/modules/store_screen/views/widgets/circular_image.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/image_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';

class KamariatiUserProfileTile extends StatelessWidget {
  const KamariatiUserProfileTile({
    super.key, 
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const KamariatiCircularImage(
        image: KamariatiImages.user,
        width: 50,
        height:50,
        padding: 0,
      ),
      title: Text(
        KamariatiTexts.profileSuciAqilaName, 
        style: GoogleFonts.plusJakartaSans(
          textStyle: Theme.of(context).textTheme.headlineSmall!.apply(
            color: KamariatiColors.light
          ),
        ),
      ),
      subtitle: Text(
        KamariatiTexts.profileSuciAqilaEmail, 
        style: GoogleFonts.plusJakartaSans(
          textStyle: Theme.of(context).textTheme.bodyMedium!.apply(
            color: KamariatiColors.light
          )
        ),
      ),
      trailing: IconButton(
        onPressed: onPressed, 
        icon: const Icon(FluentIcons.edit_24_regular,
        color: KamariatiColors.white,
        ),
      ),
    );
  }
}