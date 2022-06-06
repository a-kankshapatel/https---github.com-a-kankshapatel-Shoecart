class UserModel {
  String? uid, email, fname, lname;

  var phone;

  var address;

  UserModel({
    this.uid,
    this.fname,
    this.email,
    this.lname,
  });

// taking data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      fname: map['firstName'],
      lname: map['secondName'],
    );
  }
// sending data to the server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'fname': fname,
      'lname': lname,
    };
  }
}
