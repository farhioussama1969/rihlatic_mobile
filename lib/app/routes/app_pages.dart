import 'package:get/get.dart';

import '../modules/banned/bindings/banned_binding.dart';
import '../modules/banned/views/banned_view.dart';
import '../modules/get_started/bindings/get_started_binding.dart';
import '../modules/get_started/views/get_started_view.dart';
import '../modules/home_page/bindings/home_page_binding.dart';
import '../modules/home_page/views/home_page_view.dart';
import '../modules/hotel_details/bindings/hotel_details_binding.dart';
import '../modules/hotel_details/views/hotel_details_view.dart';
import '../modules/new_update/bindings/new_update_binding.dart';
import '../modules/new_update/views/new_update_view.dart';
import '../modules/package_booking_page/bindings/package_booking_page_binding.dart';
import '../modules/package_booking_page/views/package_booking_page_view.dart';
import '../modules/package_details_page/bindings/package_details_page_binding.dart';
import '../modules/package_details_page/views/package_details_page_view.dart';
import '../modules/packages_page/bindings/packages_page_binding.dart';
import '../modules/packages_page/views/packages_page_view.dart';
import '../modules/room_details/bindings/room_details_binding.dart';
import '../modules/room_details/views/room_details_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.PACKAGE_BOOKING_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.NEW_UPDATE,
      page: () => const NewUpdateView(),
      binding: NewUpdateBinding(),
    ),
    GetPage(
      name: _Paths.BANNED,
      page: () => const BannedView(),
      binding: BannedBinding(),
    ),
    GetPage(
      name: _Paths.GET_STARTED,
      page: () => const GetStartedView(),
      binding: GetStartedBinding(),
    ),
    GetPage(
      name: _Paths.HOTEL_DETAILS,
      page: () => const HotelDetailsView(),
      binding: HotelDetailsBinding(),
    ),
    GetPage(
      name: _Paths.ROOM_DETAILS,
      page: () => const RoomDetailsView(),
      binding: RoomDetailsBinding(),
    ),
    GetPage(
      name: _Paths.HOME_PAGE,
      page: () => const HomePageView(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: _Paths.PACKAGES_PAGE,
      page: () => const PackagesPageView(),
      binding: PackagesPageBinding(),
    ),
    GetPage(
      name: _Paths.PACKAGE_DETAILS_PAGE,
      page: () => const PackageDetailsPageView(),
      binding: PackageDetailsPageBinding(),
    ),
    GetPage(
      name: _Paths.PACKAGE_BOOKING_PAGE,
      page: () => const PackageBookingPageView(),
      binding: PackageBookingPageBinding(),
    ),
  ];
}
