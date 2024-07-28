import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kamariati_cosmetic_project/app/modules/bottom_navigation_screen/views/bottom_navigation_screen_view.dart';
import 'package:kamariati_cosmetic_project/app/modules/forget_password_screen/views/forget_password_screen_view.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';

class KamariatiLoginForm extends StatelessWidget {
  const KamariatiLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = KamariatiHelperFunctions.isDarkMode(context);
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: KamariatiSizes.spaceBtwSections),
        child: Column(
          children: [
        
            // Email
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  FluentIcons.mail_20_regular,
                ),
                labelText: KamariatiTexts.email,
                labelStyle: TextStyle(fontSize: 16, color: dark ? KamariatiColors.grey : KamariatiColors.darkGrey),
              ),
            ),
            verticalSpace(KamariatiSizes.spaceBtwInputFields),
        
            // Password
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  FluentIcons.lock_closed_20_regular,
                ),
                labelText: KamariatiTexts.password,
                labelStyle: TextStyle(fontSize: 16, color: dark ? KamariatiColors.grey : KamariatiColors.darkGrey),
                suffixIcon: const Icon(FluentIcons.eye_off_20_regular)
              ),
            ),
            verticalSpace(KamariatiSizes.spaceBtwInputFields / 2),
        
            // Remember Me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember Me
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {},),
                    Text(
                      KamariatiTexts.rememberMe,
                      style: GoogleFonts.plusJakartaSans(
                        textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        )
                      ),
                    )
                  ],
                ),
        
                // Forget Password
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPasswordScreenView()), 
                  child: Text(
                    KamariatiTexts.forgetPassword,
                    style: GoogleFonts.plusJakartaSans(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: dark ? KamariatiColors.light : KamariatiColors.dark
                      )
                    ),
                  )
                )
              ],
            ),
            verticalSpace(KamariatiSizes.spaceBtwSections),
        
            // Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const BottomNavigationScreenView()), 
                child: const Text(
                  KamariatiTexts.signIn
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
