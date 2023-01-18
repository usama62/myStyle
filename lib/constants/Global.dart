class Global {
  static const String baseUrl = "https://api.zadigital.com.pk";
  static const String _register = "/api/auth/register";
  static const String _login = "/api/auth/login";
  static const String _logout = "/api/auth/logout";
  static const String _userData = "/api/auth/me";
  static const String _refresh = "/api/auth/refresh";

  static Uri getRegisterUrl() => Uri.parse('$baseUrl$_register');
  static Uri getLoginUrl() => Uri.parse('$baseUrl$_login');
  static Uri getLogoutUrl() => Uri.parse('$baseUrl$_logout');
  static Uri getUserDataUrl() => Uri.parse('$baseUrl$_userData');
  static Uri getRefreshTokenUrl() => Uri.parse('$baseUrl$_refresh');

  static Map<String, String> getCustomizedHeader() =>
      {'Accept': 'application/json'};
}
