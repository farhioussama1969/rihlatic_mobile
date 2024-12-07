class EndPointsConstants {
  static const String baseUrl = 'https://api.dsonetech.com/api';

  //auth provider
  static const String register = '/front/user/register';
  static const String login = '/front/user/login';
  static const String logout = '/front/logout';
  static const String me = '/front/me';
  static const String changePassword = '/front/me/details/auth';
  static const String remindPassword = '/front/password/remind';
  static const String restPassword = '/front/password/reset';
  static const String verficationEmail = '/front/email/verify';
  static const String checkUserStatus = '/front/user/check_user_status';
  static const String home = '/home';

  //config provider
  static const String generalSettings = 'general_settings';
}
