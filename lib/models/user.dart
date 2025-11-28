class User {
  final int id;
  final String email;
  final String name;
  final String role;
  final DateTime createdAt;

  User({
    required this.id,
    required this.email,
    required this.name,
    required this.role,
    required this.createdAt,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id:
          json['id'] is int
              ? json['id']
              : int.tryParse(json['id'].toString()) ?? 0,
      email: json['email'] ?? '',
      name: json['name'] ?? '',
      role: json['role'] ?? '',
      createdAt: DateTime.parse(json['createdAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'role': role,
      'createdAt': createdAt.toIso8601String(),
    };
  }
}
