class ApiEndpoints {
  static final String baseUrl = 'https://192.168.174.11:5000/';
  static _AuthEndPoints authEndpoints = _AuthEndPoints();
}
class _AuthEndPoints {
  final String registerAccount = '/register';
  final String loginAccount = '/login';
}