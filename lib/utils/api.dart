// ignore_for_file: prefer_const_declarations, unused_element, library_private_types_in_public_api

class API {
  static final String baseUrl = 'https://127.0.0.1:5000';
  static _AuthEndPoints authEndPoints = _AuthEndPoints();

}
class _AuthEndPoints {
  final String loginAccount = '/login';
  final String registerAccount = '/register';
}
