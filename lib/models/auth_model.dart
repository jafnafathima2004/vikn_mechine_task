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
      accessToken: json["access"] ?? json["access_token"] ?? "",
      refreshToken: json["refresh"] ?? json["refresh_token"] ?? "",
      userId: json["user_id"] ?? json["id"] ?? 0,
      username: json["username"] ?? "",
    );
  }
}
