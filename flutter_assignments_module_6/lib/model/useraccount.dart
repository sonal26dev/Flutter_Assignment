class UserAccount{
  String? id;
  String? name;
  String? email;
  String? contact;
  String? password;

  UserAccount({this.id, this.name, this.email, this.contact, this.password});
  Map<String,dynamic>toMap(){
    return {
      'id': this.id,
      'name': this.name,
      'email': this.email,
      'contact': this.contact,
      'password': this.password
    };
  }

}