import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rihlatic/app/core/constants/strings_assets_constants.dart';
import 'package:rihlatic/app/core/styles/theme_styles.dart';
import 'package:rihlatic/app/core/utils/theme_util.dart';
import 'package:rihlatic/app/core/utils/translation_util.dart';
import 'package:rihlatic/app/core/utils/translations/translation.dart';
import 'package:rihlatic/app/core/utils/translations/translations_assets_reader.dart';
import 'package:rihlatic/app/modules/config_controller.dart';
import 'package:rihlatic/app/modules/user_controller.dart';

import 'app/routes/app_pages.dart';

// late final FirebaseMessaging _messaging;
//
// Future _firebaseMessagingBackgroundHandler(RemoteMessage message) async {}
//
// Future<void> requestAndRegisterNotification() async {
//   await Firebase.initializeApp();
//   _messaging = FirebaseMessaging.instance;
//   print('firebase token: ${await _messaging.getToken()}');
//   if (await LocalStorageService.loadData(key: StorageKeysConstants.fcmToken, type: DataTypes.string) == null) {
//     _messaging.getToken().then((token) async {
//       print('firebase token: ${token}');
//       LocalStorageService.saveData(key: StorageKeysConstants.fcmToken, type: DataTypes.string, value: token);
//       _messaging.subscribeToTopic(FirebaseMessagingTobicsConstants.allClients);
//     });
//   }
//
//   NotificationSettings settings = await _messaging.requestPermission(
//     alert: true,
//     badge: true,
//     provisional: false,
//     sound: true,
//   );
//
//   if (settings.authorizationStatus == AuthorizationStatus.authorized) {
//     FirebaseMessaging.onMessage.listen(
//       (RemoteMessage message) {
//         LocalNotificationService.showNotification(title: message.notification?.title, body: message.notification?.body);
//       },
//     );
//     FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) async {});
//   }
// }
//
// void startFirebaseCrashlytics() {
//   FlutterError.onError = (errorDetails) {
//     FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
//   };
//   PlatformDispatcher.instance.onError = (error, stack) {
//     FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
//     return true;
//   };
//
//   FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
// }

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await FlutterConfig.loadEnvVariables();
  await TranslationsAssetsReader.initialize();
  await TranslationUtil.initialize();
  await ThemeUtil.initialize();

  //LocalNotificationService.initialize();
  // await requestAndRegisterNotification();
  //FirebaseAnalytics.instance;
  //startFirebaseCrashlytics();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  Get.put(ConfigController(), permanent: true);
  Get.put(UserController(), permanent: true);
  runApp(
    ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (BuildContext context, Widget? child) {
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          child: GetMaterialApp(
            transitionDuration: const Duration(milliseconds: 300),
            defaultTransition: Transition.noTransition,
            debugShowCheckedModeBanner: false,
            title: StringsAssetsConstants.appName,
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
            translations: Translation(),
            locale: TranslationUtil.currentLang,
            fallbackLocale: const Locale('en'),
            themeMode: ThemeUtil.currentTheme,
            theme: ThemeStyles.lightTheme,
            darkTheme: ThemeStyles.darkTheme,
            // builder: EasyLoading.init(),
          ),
        );
      },
    ),
  );
}
