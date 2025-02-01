import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:rihlatic/app/core/components/pop_ups/bottom_sheet_component.dart';
import 'package:rihlatic/app/core/constants/get_builders_ids_constants.dart';
import 'package:rihlatic/app/core/components/animations/loading_component.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';
import 'package:rihlatic/app/modules/home_page/views/components/discover_algeria_component.dart';
import 'package:rihlatic/app/modules/home_page/views/components/check_user_status_window_component.dart';
import 'package:rihlatic/app/modules/home_page/views/components/email_confirmation_window_component.dart';
import 'package:rihlatic/app/modules/home_page/views/components/gallery_home_component.dart';
import 'package:rihlatic/app/modules/home_page/views/components/list_filtre_view_component.dart';
import 'package:rihlatic/app/modules/home_page/views/components/login_window_component.dart';
import 'package:rihlatic/app/modules/home_page/views/components/organized_trip_component.dart';
import 'package:rihlatic/app/modules/home_page/views/components/favorites_distinations_component.dart';
import 'package:rihlatic/app/modules/home_page/views/components/popular_flights_component.dart';
import 'package:rihlatic/app/modules/home_page/views/components/register_window_component.dart';

import '../controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: 1.sw,
      child: GetBuilder<HomePageController>(
          id: GetBuildersIdsConstants.homeBody,
          builder: (logic) {
            return logic.isHomeLoading
                ? const Center(child: LoadingComponent())
                : SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // title
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hey Aymen',
                                style: TextStyles.largeLabelTextStyle(context)
                                    .copyWith(
                                        color: MainColors.textColor(context)!),
                              ),
                              Text(
                                'Welcome to Rihlatic',
                                style: TextStyles.largeBodyTextStyle(context)
                                    .copyWith(
                                        color: MainColors.textColor(context)!
                                            .withOpacity(0.6)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),

                        // banner
                        const GalleryHomeComponent(),
                        SizedBox(
                          height: 20.h,
                        ),
                        // filtre
                        const ListFiltreViewComponent(),
                        SizedBox(
                          height: 20.h,
                        ),
                        if (logic.homeData?.discoverAlgeria != null &&
                            logic.homeData!.discoverAlgeria!.isNotEmpty)
                          DiscoverAlgeriaComponent(
                            title: 'Discover Algeria',
                            itemsList: logic.homeData?.discoverAlgeria ?? [],
                          ),

                        SizedBox(
                          height: 20.h,
                        ),

                        if (logic.homeData?.favoriteDestinations != null &&
                            logic.homeData!.favoriteDestinations!.isNotEmpty)
                          FavoritesDistinationsComponent(
                            title: 'Favorites destinations',
                            itemsList:
                                logic.homeData?.favoriteDestinations ?? [],
                          ),
                        SizedBox(
                          height: 20.h,
                        ),
                        if (logic.homeData?.organzidTrip != null &&
                            logic.homeData!.organzidTrip!.isNotEmpty)
                          OrganizedTripComponent(
                            title: 'Organized trip',
                            itemsList: logic.homeData?.organzidTrip ?? [],
                          ),
                        SizedBox(
                          height: 20.h,
                        ),
                        if (logic.homeData?.popularFlights != null &&
                            logic.homeData!.popularFlights!.isNotEmpty)
                          PopularFlightsComponent(
                            title: 'Popular Flights',
                            itemsList: logic.homeData?.popularFlights ?? [],
                          ),
                        SizedBox(
                          height: 50.h,
                        ),
                      ],
                    ),
                  );
          }),
    ));
  }

  void showCheckUserStatusWindow() {
    BottomSheetComponent.show(
      Get.context!,
      body: GetBuilder<HomePageController>(
        autoRemove: false,
        id: GetBuildersIdsConstants.homeCheckUserStatusWindow,
        builder: (logic) {
          return CheckUserStatusWindowComponent(
            formKey: logic.checkUserFormKey,
            emailController: logic.emailController,
            emailFocusNode: logic.emailFocusNode,
            loading: logic.checkUserStatusLoading,
            onContinue: logic.checkUserStatus,
          );
        },
      ),
    );
  }

  void showRegisterWindow() {
    BottomSheetComponent.show(
      Get.context!,
      dismissible: false,
      body: GetBuilder<HomePageController>(
        autoRemove: false,
        id: GetBuildersIdsConstants.homeRegisterWindow,
        builder: (logic) {
          return RegisterWindowComponent(
            formKey: logic.registerFormKey,
            emailFocusNode: logic.emailFocusNode,
            emailController: logic.emailController,
            passwordFocusNode: logic.passwordFocusNode,
            passwordController: logic.passwordController,
            passwordConfirmationFocusNode: logic.passwordConfirmationFocusNode,
            passwordConfirmationController:
                logic.passwordConfirmationController,
            isPasswordVisible: logic.isPasswordVisible,
            isPasswordConfirmationVisible: logic.isPasswordConfirmationVisible,
            onPasswordVisibility: logic.changePasswordVisibility,
            onPasswordConfirmationVisibility:
                logic.changePasswordConfirmationVisibility,
            loading: logic.registerLoading,
            onContinue: logic.register,
          );
        },
      ),
    );
  }

  void showEmailConfirmationWindow() {
    BottomSheetComponent.show(
      Get.context!,
      body: GetBuilder<HomePageController>(
        autoRemove: false,
        id: GetBuildersIdsConstants.homeEmailConfirmationWindow,
        builder: (logic) {
          return EmailConfirmationWindowComponent(
            otpController: logic.otpController,
            loading: logic.emailConfirmationLoading,
            onContinue: logic.emailConfirmation,
            resendCodeLoading: logic.resendCodeLoading,
            onResendCode: logic.resendCode,
          );
        },
      ),
    );
  }

  void showLoginWindow() {
    BottomSheetComponent.show(
      Get.context!,
      body: GetBuilder<HomePageController>(
        autoRemove: false,
        id: GetBuildersIdsConstants.homeLoginWindow,
        builder: (logic) {
          return LoginWindowComponent(
            passwordController: logic.loginPasswordController,
            passwordFocusNode: logic.loginPasswordFocusNode,
            loading: logic.checkUserStatusLoading,
            onPasswordVisibility: logic.changeLoginPasswordVisibility,
            isPasswordVisible: logic.loginPasswordVisible,
            formKey: logic.loginFormKey,
            onContinue: logic.checkUserStatus,
          );
        },
      ),
    );
  }
}
