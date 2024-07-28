import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamariati_cosmetic_project/app/modules/register_screen/views/widgets/terms_and_conditions.dart';
import 'package:kamariati_cosmetic_project/app/modules/register_screen/views/widgets/verify_email.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/colors.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';
import 'package:kamariati_cosmetic_project/app/utils/helpers/helper_functions.dart';
class KamariatiSignUpForm extends StatelessWidget {
  const KamariatiSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = KamariatiHelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
    
          // Username
          TextFormField(
            decoration: InputDecoration(
              labelText: KamariatiTexts.username,
              labelStyle: TextStyle(fontSize: 16, color: dark ? KamariatiColors.grey : KamariatiColors.darkGrey),
              prefixIcon: const Icon(FluentIcons.person_20_regular),
            ),
          ),
          verticalSpace(KamariatiSizes.spaceBtwInputFields),
    
          // Email
          TextFormField(
            decoration: InputDecoration(
              labelText: KamariatiTexts.email,
              labelStyle: TextStyle(fontSize: 16, color: dark ? KamariatiColors.grey : KamariatiColors.darkGrey),
              prefixIcon: const Icon(FluentIcons.mail_20_regular),
            ),
          ),
          verticalSpace(KamariatiSizes.spaceBtwInputFields),
    
          // Phone Number
          TextFormField(
            decoration: InputDecoration(
              labelText: KamariatiTexts.phoneNumber,
              labelStyle: TextStyle(fontSize: 16, color: dark ? KamariatiColors.grey : KamariatiColors.darkGrey),
              prefixIcon: const Icon(FluentIcons.phone_20_regular),
            ),
          ),
          verticalSpace(KamariatiSizes.spaceBtwInputFields),
    
          // Password
          TextFormField(
            decoration: InputDecoration(
              labelText: KamariatiTexts.password,
              labelStyle: TextStyle(fontSize: 16, color: dark ? KamariatiColors.grey : KamariatiColors.darkGrey),
              prefixIcon: const Icon(FluentIcons.lock_closed_20_regular),
            ),
          ),
          verticalSpace(KamariatiSizes.spaceBtwInputFields),
    
          // Confirm Password
          TextFormField(
            decoration: InputDecoration(
              labelText: KamariatiTexts.confirmPassword,
              labelStyle: TextStyle(fontSize: 16, color: dark ? KamariatiColors.grey : KamariatiColors.darkGrey),
              prefixIcon: const Icon(FluentIcons.lock_closed_20_regular),
            ),
          ),
          verticalSpace(KamariatiSizes.spaceBtwSections),
    
          // Terms & Conditions Checkbox
          const KamariatiTermsAndConditions(),
          verticalSpace(KamariatiSizes.spaceBtwSections),
    
          // Signup Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()), 
              child: const Text(KamariatiTexts.createAccount)),
          )
        ],
      ),
    );
  }
}