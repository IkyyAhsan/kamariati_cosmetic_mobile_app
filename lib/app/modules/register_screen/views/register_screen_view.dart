import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamariati_cosmetic_project/app/modules/login_screen/views/widgets/form_divider.dart';
import 'package:kamariati_cosmetic_project/app/modules/login_screen/views/widgets/social_buttons.dart';
import 'package:kamariati_cosmetic_project/app/modules/register_screen/views/widgets/signup_form.dart';
import 'package:kamariati_cosmetic_project/app/modules/register_screen/views/widgets/signup_header.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/custom_appbar.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/sizes.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';
import '../controllers/register_screen_controller.dart';

class RegisterScreenView extends GetView<RegisterScreenController> {
  const RegisterScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KamariatiAppBarWidget(title: KamariatiTexts.registerText, showLeading: true, onPressed: () => Get.back(),),
      body: Padding(
        padding: const EdgeInsets.all(KamariatiSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            // Title
            const KamariatiSignupHeader(),
            verticalSpace(KamariatiSizes.spaceBtwSections),
            // Form
            const KamariatiSignUpForm(),
            verticalSpace(KamariatiSizes.spaceBtwSections),

            // Divider
            KamariatiFormDivider(dividerText: KamariatiTexts.orSignUpWith.capitalize!),
            verticalSpace(KamariatiSizes.spaceBtwSections),

            // Social Buttons
            const KamariatiSocialButtons(),
          ],
        ),
      )
    );
  }
}