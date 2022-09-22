class LoginResponse {
  int?id;
  String?firstName;
  String?lastName;
  String?email;
  String?phone;
  String?token;
  LoginResponse(this.id,this.firstName,this.lastName,this.email,this.phone,this.token);
  LoginResponse.fromJson(dynamic json){
    id = json["data"]["id"];
    firstName = json["data"]["first_name"];
    lastName = json["data"]["last_name"];
    email = json["data"]["email"];
    phone = json["data"]["phone"];
    token = json ["data"]["access_token"];
  }

}