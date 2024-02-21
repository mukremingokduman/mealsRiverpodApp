import '../types/model.dart';

class User extends Model {
  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final String? mobile;

  const User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.mobile,
  });

  User.fromMap(Map<String, dynamic> map)
      : this(
          id: map['id'],
          firstName: map['firstName'],
          lastName: map['lastName'],
          email: map['email'],
          mobile: map['mobile'],
        );

  @override
  User copyWith({
    int? id,
    String? firstName,
    String? lastName,
    String? email,
    String? mobile,
  }) {
    return User(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      mobile: mobile ?? this.mobile,
    );
  }

  @override
  Map<String, dynamic> toMap() => {
        'id': id,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'mobile': mobile,
      };

  static User emptyUser = const User(
    id: -1,
    firstName: "",
    lastName: "",
    email: "",
    mobile: "",
  );
}
