class SignupResponse {
  String?first_name;
  String?last_name;
  String?age;
  String?gender;
  String?email;
  String?phone;

  SignupResponse(this.email,this.phone,this.first_name,this.gender,this.age,this.last_name);
  SignupResponse.fromJson(dynamic json)
  {
    first_name = json["data"]["first_name"];
    email = json["data"]["email"];
    phone = json["data"]["phone"];
    age = json["data"]["age"];
    gender = json["data"]["gender"];
    last_name = json["data"]["last_name"];
  }
}