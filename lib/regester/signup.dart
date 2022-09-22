import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';
import 'package:triplt_project/login/new_login.dart';
import 'package:triplt_project/new_color/NewColor.dart';
import 'package:triplt_project/regester/signup_respons.dart';
import '../location/BottomNavigationBar.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController name=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController phone=TextEditingController();
  TextEditingController password=TextEditingController();
  bool isPassword = true;
  bool isname = true;
  bool isemail = true;
  bool isphone = true;
  bool isLoading = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690),minTextAdapt: true,
      splitScreenMode: true,);
    ScreenUtil().setSp(24);
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  NewColor.loginBackground,
                  NewColor.calendarBackground,
                ]
            )
        ),
        child: SingleChildScrollView(
          child: Stack(
              children: [

                Form(
                  key:_formKey ,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(height: 20.h),
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 80.h,
                              child: Image.asset("assets/images/logoimage.png",
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0).r,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(8.0,8,8,8).r,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0).r,
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0).r,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10,),
                                  Center(child: Text(
                                    "SignUP",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0),
                                  ),),
                                  Container(height: 8.h),
                                  TextFormField(
                                    controller: name,
                                    // keyboardType: TextInputType.emailAddress,
                                    decoration:  InputDecoration(
                                      labelText: "Name",
                                    ),
                                    validator: (value) {
                                      if (value == null ||
                                          value.isEmpty) {
                                        return "Enter Valid name";
                                      }
                                      return null;
                                    },
                                  ),
                                  TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    controller: email,
                                    obscureText:isemail ,
                                    decoration:  InputDecoration(
                                      labelText: "Email",
                                    ),
                                    validator: (value) {
                                      if (value == null||
                                          value.isEmpty||
                                          !value.contains("@")) {
                                        return "Enter Valid Email";
                                      }
                                      return null;
                                    },
                                  ),
                                  TextFormField(
                                    controller: password,
                                    obscureText: isPassword,
                                    decoration: InputDecoration(
                                        labelText: "Password"
                                    ),
                                    validator: (value) {
                                      if (value == null ||
                                          value.isEmpty) {
                                        return "Enter Valid Password";
                                      }
                                      return null;
                                    },

                                  ),
                                  TextFormField(
                                    keyboardType: TextInputType.number,
                                    controller: phone,
                                    decoration: InputDecoration(
                                        labelText: "PhoneNumber",
                                    ),
                                    validator: (value) {
                                      if (value == null ||
                                          value.isEmpty) {
                                        return "Enter Valid phone";
                                      }
                                      return null;
                                    },
                                  ),
                                  Container(height: 15.h),
                                  Container(
                                    width: double.infinity,
                                    child: isLoading ? Center(child: CircularProgressIndicator(),): ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: FlatButton(
                                          padding: EdgeInsets.symmetric(vertical: 5,horizontal: 12).r,
                                          color:  Color(0xFF0b33d4),
                                          onPressed: () {
                                            if(_formKey.currentState!.validate()){
                                              _formKey.currentState!.save();
                                              SignUp();
                                            }
                                          },
                                          child: Row(
                                            children: [
                                              Container(width: 100.h),
                                              Text(
                                                "SignUp",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Container(width: 90.h),
                                              CircleAvatar(
                                                radius: 18.r,
                                                backgroundColor: Color(0xFF1966e3),

                                                child:Icon(Icons.arrow_forward,
                                                ) ,
                                              )
                                            ],
                                          )
                                      ),
                                    ),
                                  ),
                                  Container(height: 10.h)
                                ]
                            ),
                          ),
                        ),
                      ),
                      Container(height: 15.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/Facebook.png",
                          ),
                          Container(width: 20.h),
                          Image.asset("assets/images/Google.png",
                          ),
                        ],
                      ),
                      Container(height: 10.h),
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);                        },
                        child: Center(
                          child: Text("Already have an account ?login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.0
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                ),
              ]
          ),
        ),

      ),
    );
  }
  Future SignUp()async
  {
    setState(() {
      isLoading = true;
    });
    Response response =  await post(Uri.parse("http://alcaptin.com/api/register"),
        body:
        {
          "first_name":name.text,
          "email":email.text,
          "password":password.text,
          "phone":phone.text,
          "last_name":"elshora",
          "age":"28",
          "gender":"male",
        });
    dynamic Convertedjson = jsonDecode(response.body);
    if(response.statusCode==200){
      SignupResponse signupResponse=SignupResponse.fromJson(Convertedjson);
      Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigation()));
    }else{print("object");}
    setState(() {
      isLoading = false;
    });
  }
}
