
class LoginResponse{
  final String? token;
  final String? error;

  LoginResponse({this.token, this.error});

  factory LoginResponse.fromJson(Map<String, dynamic> json){
    return LoginResponse(
      token: json['token'],
      error: json['error']
    );
  }
}