class RequestAuthenticationModel {
  RequestAuthenticationModel({
    required this.login,
    required this.password,
  });

  String login;
  String password;

  Map<String, dynamic> toJson() => {
        "login": login,
        "password": password,
      };
}
