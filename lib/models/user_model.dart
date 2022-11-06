class UserModel{
  String? uid;
  String? email;
  String? indexNumber;
  String? name;
  String? courseName;

  UserModel({this.uid, this.name, this.email, this.courseName, this.indexNumber});

  factory UserModel.fromMap(map)
  {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      indexNumber: map['indexNumber'],
      name: map['name'],
      courseName: map['courseName'],
    );
  }

  Map<String, dynamic> toMap(){
    return{
      'uid': uid,
      'email': email,
      'name': name,
      'indexNumber': indexNumber,
      'courseName': courseName,
    };
  }

}