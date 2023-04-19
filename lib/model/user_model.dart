class UserModel {
  String? uid;
  String? email;
  String? firstname;
  String? secondname;

  UserModel({this.uid, this.email, this.firstname, this.secondname});

  // recieve data from server
  factory UserModel.fromMap(Map) {
    return UserModel(
      uid: Map['uid'],
      email: Map['email'],
      firstname: Map['firstname'],
      secondname: Map['secondname'],
    );
  }



  //sending data to our server
  Map<String, dynamic> toMap(){
    return{
      'uid': uid,
      'email': email,
      'firstname': firstname,
      'secondname': secondname,
    };
  }
}
