class UserModel {
  final String name;
  final String email;
  final String password;
  final String id;
  final String profilePictue;

  UserModel(
      {required this.name,
      required this.email,
      required this.password,
      required this.id,
      required this.profilePictue});

  // convert to json structure

  Map<String, dynamic> toJson() {
    return {
      "Name": name,
      "Email": email,
      "Password": password,
      "ProfilePictuee": profilePictue,
      "Id": id,
    };
  }
}
