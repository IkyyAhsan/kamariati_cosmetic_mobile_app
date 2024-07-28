import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/modules/forget_password_screen/views/widgets/reset_password.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';
import '../controllers/forget_password_screen_controller.dart';

class ForgetPasswordScreenView extends GetView<ForgetPasswordScreenController> {
  const ForgetPasswordScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(KamariatiSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Headings
            Text(
              KamariatiTexts.forgetPasswordTitle, 
              style: GoogleFonts.plusJakartaSans(
                textStyle: Theme.of(context).textTheme.headlineMedium
              ),
            ),
            verticalSpace(KamariatiSizes.spaceBtwItems),
            Text(
              KamariatiTexts.forgetPasswordSubTitle,
              style: GoogleFonts.plusJakartaSans(
                textStyle: Theme.of(context).textTheme.labelMedium
              ),
            ),
            verticalSpace(KamariatiSizes.spaceBtwSections * 2),

            // TextFields
            TextFormField(
              decoration: const InputDecoration(
                labelText: KamariatiTexts.email,
                prefixIcon: Icon(FluentIcons.mail_20_regular),
              ),
            ),
            verticalSpace(KamariatiSizes.spaceBtwSections),

            // Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => const ResetPassword()), 
                child: const Text(KamariatiTexts.submit)
              ),
            )
          ],
        ),
        ),
    );
  }
}
