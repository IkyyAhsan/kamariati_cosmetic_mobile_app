import 'package:get/get.dart';

import '../modules/all_brand_screen/bindings/all_brand_screen_binding.dart';
import '../modules/all_brand_screen/views/all_brand_screen_view.dart';
import '../modules/all_product_screen/bindings/all_product_screen_binding.dart';
import '../modules/all_product_screen/views/all_product_screen_view.dart';
import '../modules/bottom_navigation_screen/bindings/bottom_navigation_screen_binding.dart';
import '../modules/bottom_navigation_screen/views/bottom_navigation_screen_view.dart';
import '../modules/cart_screen/bindings/cart_screen_binding.dart';
import '../modules/cart_screen/views/cart_screen_view.dart';
import '../modules/forget_password_screen/bindings/forget_password_screen_binding.dart';
import '../modules/forget_password_screen/views/forget_password_screen_view.dart';
import '../modules/home_screen/bindings/home_screen_binding.dart';
import '../modules/home_screen/views/home_screen_view.dart';
import '../modules/login_screen/bindings/login_screen_binding.dart';
import '../modules/login_screen/views/login_screen_view.dart';
import '../modules/onboarding_screen/bindings/onboarding_screen_binding.dart';
import '../modules/onboarding_screen/views/onboarding_screen_view.dart';
import '../modules/order_history_screen/bindings/order_history_screen_binding.dart';
import '../modules/order_history_screen/views/order_history_screen_view.dart';
import '../modules/product_detail_screen/bindings/product_detail_screen_binding.dart';
import '../modules/product_detail_screen/views/product_detail_screen_view.dart';
import '../modules/product_review_screen/bindings/product_review_screen_binding.dart';
import '../modules/product_review_screen/views/product_review_screen_view.dart';
import '../modules/profile_screen/bindings/profile_screen_binding.dart';
import '../modules/profile_screen/views/profile_screen_view.dart';
import '../modules/register_screen/bindings/register_screen_binding.dart';
import '../modules/register_screen/views/register_screen_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';
import '../modules/store_screen/bindings/category_screen_binding.dart';
import '../modules/store_screen/views/store_screen_view.dart';
import '../modules/sub_categories_screen/bindings/sub_categories_screen_binding.dart';
import '../modules/sub_categories_screen/views/sub_categories_screen_view.dart';
import '../modules/success_screen/bindings/success_screen_binding.dart';
import '../modules/success_screen/views/success_screen_view.dart';
import '../modules/user_address_screen/bindings/user_address_screen_binding.dart';
import '../modules/user_address_screen/views/user_address_screen_view.dart';
import '../utils/constants/image_strings.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME_SCREEN,
      page: () => HomeScreenView(),
      binding: HomeScreenBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_SCREEN,
      page: () => const OnboardingScreenView(),
      binding: OnboardingScreenBinding(),
    ),
    GetPage(
      name: _Paths.HOME_SCREEN,
      page: () => HomeScreenView(),
      binding: HomeScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_SCREEN,
      page: () => const LoginScreenView(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER_SCREEN,
      page: () => const RegisterScreenView(),
      binding: RegisterScreenBinding(),
    ),
    GetPage(
      name: _Paths.FORGET_PASSWORD_SCREEN,
      page: () => const ForgetPasswordScreenView(),
      binding: ForgetPasswordScreenBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM_NAVIGATION_SCREEN,
      page: () => const BottomNavigationScreenView(),
      binding: BottomNavigationScreenBinding(),
    ),
    GetPage(
      name: _Paths.STORE_SCREEN,
      page: () => const StoreScreenView(),
      binding: StoreScreenBinding(),
    ),
    GetPage(
      name: _Paths.CART_SCREEN,
      page: () => const CartScreenView(),
      binding: CartScreenBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_SCREEN,
      page: () => const ProfileScreenView(),
      binding: ProfileScreenBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_DETAIL_SCREEN,
      page: () => const ProductDetailScreenView(),
      binding: ProductDetailScreenBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_REVIEW_SCREEN,
      page: () => const ProductReviewScreenView(),
      binding: ProductReviewScreenBinding(),
    ),
    GetPage(
      name: _Paths.USER_ADDRESS_SCREEN,
      page: () => const UserAddressScreenView(),
      binding: UserAddressScreenBinding(),
    ),
    GetPage(
      name: _Paths.SUCCESS_SCREEN,
      page: () => SuccessScreenView(
        image: KamariatiImages.successfulPaymentIcon,
        title: 'Pembayaran Berhasil!',
        subtitle: 'Pesanan anda akan segera dikirimkan',
        onPressed: () => Get.offAll(() => const BottomNavigationScreenView()),
      ),
      binding: SuccessScreenBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_HISTORY_SCREEN,
      page: () => const OrderHistoryScreenView(),
      binding: OrderHistoryScreenBinding(),
    ),
    GetPage(
      name: _Paths.SUB_CATEGORIES_SCREEN,
      page: () => const SubCategoriesScreenView(),
      binding: SubCategoriesScreenBinding(),
    ),
    GetPage(
      name: _Paths.ALL_PRODUCT_SCREEN,
      page: () => const AllProductScreenView(),
      binding: AllProductScreenBinding(),
    ),
    GetPage(
      name: _Paths.ALL_BRAND_SCREEN,
      page: () => const AllBrandScreenView(),
      binding: AllBrandScreenBinding(),
    ),
  ];
}
