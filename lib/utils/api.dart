// ignore_for_file: prefer_const_declarations, unused_element, library_private_types_in_public_api, prefer_final_fields, unused_field

class API {
  static final String baseUrl = 'http://34.143.131.80/'; //online - google cloud
  // static final String baseUrl2 = 'http://34.126.119.142/';
  // static final String baseUrl = 'https://crime-detection-api-production.up.railway.app/'; //online - railway
  // static final String baseUrl = 'http://127.0.0.1:5000/'; //local
  static _AuthEndPoints authEndPoints = _AuthEndPoints();
  static _UserEndPoints userEndPoints = _UserEndPoints();
  static _HistoryEndPoint historyEndPoint = _HistoryEndPoint();

}
class _AuthEndPoints {
  final String loginAccount = 'login';
  final String registerAccount = 'register';
  final String otpAccount = 'verify_email';
  final String forgotAccount = 'resetpassword';
}

class _UserEndPoints {
  final String movie = 'movie';
  final String userDetail = 'user';
  final String userEdit = 'user';
}

class _HistoryEndPoint {
  final String history = 'histories';
  final String deteksi = 'detect';
}
