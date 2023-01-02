class Global {
  static const String baseUrl = "https://voilapro.nl";
  static const String _login = "/apis/login.php";
  static const String _forgetPassword = "/apis/forgotPassword.php";
  static const String _register = "/apis/register.php";
  static const String _profile = "/apis/get_profile.php";
  static const String _updateProfile = "/apis/edit_profile.php";
  static const String _saveOfficerRating = "/apis/rating.php";
  static const String _getOfficerRating = "/apis/get_rating.php";
  static const String _getOfficerInfo = "/apis/officerInfo.php";
  static const String _booking = "/apis/edit_profile.php";

  static Uri getLoginUrl() => Uri.parse('$baseUrl$_login');
  static Uri getRegisterUrl() => Uri.parse('$baseUrl$_register');
  static Uri getForgetPasswordUrl() => Uri.parse('$baseUrl$_forgetPassword');
  static Uri getProfileUrl() => Uri.parse('$baseUrl$_profile');
  static Uri getUpdateProfileUrl() => Uri.parse('$baseUrl$_updateProfile');
  static Uri getsaveOfficerRatingUrl() => Uri.parse('$baseUrl$_getOfficerRating');
  static Uri getOfficerRatingUrl() => Uri.parse('$baseUrl$_saveOfficerRating');
  static Uri getOfficerInfoUrl() => Uri.parse('$baseUrl$_getOfficerInfo');
  static Uri getBookingUrl() => Uri.parse('$baseUrl$_booking');

  static Map<String, String> getCustomizedHeader() =>
      {'Accept': 'application/json'};
}
