class LoginRequest {
  final String email;
  final String password;
  final String token;

  LoginRequest({
    required this.email,
    required this.password,
    required this.token,
  });

  // Factory method for JSON deserialization
  factory LoginRequest.fromJson(Map<String, dynamic> json) {
    return LoginRequest(
      email: json['vUserName'] ?? '', // Assuming vUserName is the email field
      password: json['vPassword'] ?? '',
      token: json['token'] ?? '',
    );
  }

  // Method for JSON serialization
  Map<String, dynamic> toJson() {
    return {
      'vUserName': email,
      'vPassword': password,
      'token': token,
    };
  }
}
