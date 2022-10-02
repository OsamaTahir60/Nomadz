class UserModel {
  String? FirstName;
  String? LastName;
  String? UserName;
  String? Email;


  UserModel({this.FirstName, this.LastName, this.UserName, this.Email});

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      FirstName: map['FirstName'],
      LastName: map['LastName'],
      UserName: map['UserName'],
      Email: map['Email'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'FirstName': FirstName,
      'LastName': LastName,
      'UserName': UserName,
      'Email': Email,
    };
  }
}
