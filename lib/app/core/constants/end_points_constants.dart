class EndPointsConstants {
  static const String baseUrl = 'https://api.dsonetech.com/api';

  //auth provider
  static const String register = '/front/user/register';
  static const String login = '/front/login';
  static const String logout = '/front/logout';
  static const String me = '/front/me';
  static const String changePassword = '/front/me/details/auth';
  static const String remindPassword = '/front/password/remind';
  static const String restPassword = '/front/password/reset';
  static const String verficationEmail = '/front/email/verify';
  static const String checkUserStatus = '/front/user/check_user_status';
  static const String home = '/home';
  static const String packages = '/front/packages';
  static const String omra = '/front/omra';
  static const String bookPackage = '/front/package/bookings';
  static const String bookOmra = '/front/omras/bookings';
  static const String resendOtp = '/front/email/resend_code';

  //config provider
  static const String generalSettings = 'general_settings';

  //flight provider
  static const String flights = 'front/flights_search';
}
