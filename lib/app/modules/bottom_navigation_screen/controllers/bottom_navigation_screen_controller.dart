import 'package:get/get.dart';
import 'package:kamariati_cosmetic_project/app/modules/cart_screen/views/cart_screen_view.dart';
import 'package:kamariati_cosmetic_project/app/modules/store_screen/views/store_screen_view.dart';
import 'package:kamariati_cosmetic_project/app/modules/home_screen/views/home_screen_view.dart';
import 'package:kamariati_cosmetic_project/app/modules/profile_screen/views/profile_screen_view.dart';

class BottomNavigationScreenController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [HomeScreenView(), const StoreScreenView(), const CartScreenView(), const ProfileScreenView()];
}
