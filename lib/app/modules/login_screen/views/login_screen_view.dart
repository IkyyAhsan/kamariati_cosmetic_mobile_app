import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamariati_cosmetic_project/app/modules/bottom_navigation_screen/views/bottom_navigation_screen_view.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/custom_appbar.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spaces.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/spacing_styles.dart';
import 'package:kamariati_cosmetic_project/app/utils/constants/text_strings.dart';
import '../controllers/login_screen_controller.dart';
import 'widgets/form_divider.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';
import 'widgets/register_button.dart';
import 'widgets/social_buttons.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  const LoginScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KamariatiAppBarWidget(title: KamariatiTexts.loginText, showLeading: true, onPressed: () => Get.to(() => const BottomNavigationScreenView()),),
      body: Padding(
        padding: KamariatiSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const KamariatiLoginHeader(),
                  
            // Form
            const KamariatiLoginForm(),
                  
            // Divider
            KamariatiFormDivider(dividerText: KamariatiTexts.orSignInWith.capitalize!),
            verticalSpace(24),
            
            // Footer
            const KamariatiSocialButtons(),

            // Create Account Button
            const Spacer(),
            const KamariatiRegisterButton(),
          ],
        ),
      ),
    );
  }
}











