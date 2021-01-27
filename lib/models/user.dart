class User {
  final String name;
  final String email;
  final String symbol;
  final String phone;

  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'],
        symbol = json['username'].toString().substring(0, 1),
        phone = json['phone'];
}
