import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rihlatic/app/core/components/pop_ups/toast_component.dart';
import 'package:rihlatic/app/core/constants/get_builders_ids_constants.dart';
import 'package:rihlatic/app/core/constants/strings_assets_constants.dart';
import 'package:rihlatic/app/data/providers/rihlatech_api/auth_provider.dart';
import 'package:rihlatic/app/core/constants/get_builders_ids_constants.dart';
import 'package:rihlatic/app/data/models/home_model.dart';
import 'package:rihlatic/app/data/providers/rihlatech_api/home_provider.dart';
import 'package:rihlatic/app/modules/home_page/views/home_page_view.dart';
import 'package:rihlatic/app/modules/user_controller.dart';

class HomePageController extends GetxController {
  //TODO: Implement HomePageController

  bool isHomeLoading = false;
  HomeModel? homeData;

  void changeHomeLoading(bool value) {
    isHomeLoading = value;
    update([GetBuildersIdsConstants.homeBody]);
  }

  void changeHomeData(HomeModel? home) {
    homeData = home;
    update([GetBuildersIdsConstants.homeBody]);
  }

  Future<void> getHomeData() async {
    if (isHomeLoading) return;
    await HomeProvider()
        .home(
            onLoading: () => changeHomeLoading(true),
            onFinal: () => changeHomeLoading(false))
        .then((value) {
      if (value != null) {
        changeHomeData(value);
        for (var ite in value!.discoverAlgeria!) {
          print('itttttttem ><  ${ite.name}');
        }
      }
    });
  }

  @override
  void onInit() {
    getHomeData();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  final GlobalKey<FormState> checkUserFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmationController =
      TextEditingController();
  final TextEditingController loginPasswordController = TextEditingController();
  final TextEditingController otpController = TextEditingController();

  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  final FocusNode passwordConfirmationFocusNode = FocusNode();
  final FocusNode loginPasswordFocusNode = FocusNode();

  bool isPasswordVisible = false;
  void changePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    update([GetBuildersIdsConstants.homeRegisterWindow]);
  }

  bool isPasswordConfirmationVisible = false;
  void changePasswordConfirmationVisibility() {
    isPasswordConfirmationVisible = !isPasswordConfirmationVisible;
    update([GetBuildersIdsConstants.homeRegisterWindow]);
  }

  bool loginPasswordVisible = false;
  void changeLoginPasswordVisibility() {
    loginPasswordVisible = !loginPasswordVisible;
    update([GetBuildersIdsConstants.homeLoginWindow]);
  }

  bool checkUserStatusLoading = false;
  void changeCheckUserStatusLoading(bool value) {
    checkUserStatusLoading = value;
    update([GetBuildersIdsConstants.homeCheckUserStatusWindow]);
  }

  Future<void> checkUserStatus() async {
    if (checkUserStatusLoading) return;
    if (!checkUserFormKey.currentState!.validate()) return;
    await AuthProvider()
        .checkUserStatus(
      email: emailController.text,
      onLoading: () => changeCheckUserStatusLoading(true),
      onFinal: () => changeCheckUserStatusLoading(false),
    )
        .then((value) async {
      if (value != null) {
        if (value == 'Unconfirmed') {
          Get.back();
          const HomePageView().showEmailConfirmationWindow();
        } else {
          Get.back();
          const HomePageView().showLoginWindow();
        }
      } else {
        Get.back();
        const HomePageView().showRegisterWindow();
      }
    });
  }

  bool registerLoading = false;
  void changeRegisterLoading(bool value) {
    registerLoading = value;
    update([GetBuildersIdsConstants.homeRegisterWindow]);
  }

  Future<void> register() async {
    if (registerLoading) return;
    if (!registerFormKey.currentState!.validate()) return;
    await AuthProvider()
        .register(
      email: emailController.text,
      password: passwordController.text,
      username: emailController.text,
      onLoading: () => changeRegisterLoading(true),
      onFinal: () => changeRegisterLoading(false),
    )
        .then((value) {
      if (value != null) {
        if (value == true) {
          Get.back();
          const HomePageView().showEmailConfirmationWindow();
        }
      }
    });
  }

  bool emailConfirmationLoading = false;
  void changeEmailConfirmationLoading(bool value) {
    emailConfirmationLoading = value;
    update([GetBuildersIdsConstants.homeEmailConfirmationWindow]);
  }

  Future<void> emailConfirmation() async {
    if (emailConfirmationLoading) return;
    if (otpController.text.length != 6) {
      ToastComponent.showErrorToast(Get.context!,
          text: StringsAssetsConstants.otpValidation);
      return;
    }
    await AuthProvider()
        .verficationEmail(
      email: emailController.text,
      code: otpController.text,
      onLoading: () => changeEmailConfirmationLoading(true),
      onFinal: () => changeEmailConfirmationLoading(false),
    )
        .then((value) async {
      if (value != null) {
        await Get.find<UserController>().setUser(value);
        await Get.find<UserController>().initialize(skipUpdateChecker: true);
      }
    });
  }

  bool loginLoading = false;
  void changeLoginLoading(bool value) {
    loginLoading = value;
    update([GetBuildersIdsConstants.homeLoginWindow]);
  }

  Future<void> login() async {
    if (loginLoading) return;
    if (!loginFormKey.currentState!.validate()) return;

    await AuthProvider()
        .login(
      username: emailController.text,
      password: loginPasswordController.text,
      onLoading: () => changeLoginLoading(true),
      onFinal: () => changeLoginLoading(false),
    )
        .then((value) async {
      if (value != null) {
        await Get.find<UserController>().setUser(value);
        await Get.find<UserController>().initialize(skipUpdateChecker: true);
      }
    });
  }

  bool resendCodeLoading = false;
  void changeResendCodeLoading(bool value) {
    resendCodeLoading = value;
    update([GetBuildersIdsConstants.homeEmailConfirmationWindow]);
  }

  void resendCode() async {
    if (resendCodeLoading) return;
    await AuthProvider()
        .resendOtp(
      email: emailController.text,
      onLoading: () => changeResendCodeLoading(true),
      onFinal: () => changeResendCodeLoading(false),
    )
        .then((value) {
      if (value == true) {
        ToastComponent.showSuccessToast(Get.context!,
            text: StringsAssetsConstants.codeHasBeenSentSuccessfully);
      }
    });
  }
}
