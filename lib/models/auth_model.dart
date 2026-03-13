class LoginModel {
  final String accessToken;
  final String refreshToken;
  final int userId;
  final String username;

  LoginModel({
    required this.accessToken,
    required this.refreshToken,
    required this.userId,
    required this.username,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      accessToken: json["data"]["access"],
      refreshToken: json["data"]["refresh"],
      userId: json["data"]["user_id"],
      username: json["data"]["username"],
    );
  }
}