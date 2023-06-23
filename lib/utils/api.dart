// ignore_for_file: prefer_const_declarations, unused_element, library_private_types_in_public_api

class API {
  static final String baseUrl = 'http://192.168.201.11:5000/';
  static _AuthEndPoints authEndPoints = _AuthEndPoints();

}
class _AuthEndPoints {
  final String loginAccount = 'login';
  final String registerAccount = 'register';
}
