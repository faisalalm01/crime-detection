// ignore_for_file: prefer_const_declarations, unused_element, library_private_types_in_public_api

class API {
  // static final String baseUrl = 'https://crime-detection-api-production.up.railway.app/'; //online
  static final String baseUrl = 'http://127.0.0.1:5000/'; //local
  static _AuthEndPoints authEndPoints = _AuthEndPoints();

}
class _AuthEndPoints {
  final String loginAccount = 'login';
  final String registerAccount = 'register';
  final String otpAccount = 'verify_email';
  final String forgotAccount = 'resetpassword';
}
