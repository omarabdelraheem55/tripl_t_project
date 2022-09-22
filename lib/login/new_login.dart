
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';
import 'package:triplt_project/login/Login_respons.dart';
import 'package:triplt_project/regester/signup.dart';
import '../location/BottomNavigationBar.dart';
import '../new_color/NewColor.dart';
class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);
  @override
  State<SignIn> createState() => _SignInState();
}
class _SignInState extends State<SignIn> {
  //بنعرف هنا الكنترولز بتوعنا
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  bool isPassword = true;
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
                     Container(
                        height: 20.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(50).r,
                        child:
                        Row(
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
                        padding: const EdgeInsets.all(16.0).r,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0).r,
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0).r,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(height: 10.h),
                                  Center(child: Text(
                                    "Sign In",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0),
                                  ),),
                                  Container(height: 10.h),
                                  TextFormField(
                                    //هنا باصيت الكنترولر للتيكست فورم فيلد بتاعه
                                    controller: email,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: const InputDecoration(
                                        labelText: "Email"
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
                                  Container(height: 20.h),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(200, 0, 0, 0).r,
                                    child: Text("Forget Password ?",
                                      style: TextStyle(
                                        fontSize: 10.0,
                                        color: Color(0xFF0b33d4),
                                      ),
                                    ),
                                  ),
                                  Container(height: 15.h),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0).r,
                                    child:
                                    SizedBox(
                                      width: double.infinity,
                                      child: isLoading ? Center(child: CircularProgressIndicator(),): ClipRRect(
                                        borderRadius: BorderRadius.circular(25).r,
                                        child:  FlatButton(
                                          padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15).r,
                                          color:  Color(0xFF0b33d4),
                                          onPressed: () {
                                            if(_formKey.currentState!.validate()){
                                              _formKey.currentState!.save();
                                              login();
                                            }
                                          },
                                          child:
                                          Row(
                                            children: [
                                              Container(width: 90.h),
                                              Text(
                                                "Sign in",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Container(width: 80.h),
                                              CircleAvatar(
                                                radius: 20,
                                                backgroundColor: Color(0xFF1966e3),
                                                child:Icon(Icons.arrow_forward) ,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),


                                  ),
                                  Container(height: 10.h),
                                ]
                            ),
                          ),
                        ),
                      ),
                      Container(height: 50.h),

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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account? Signin",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
          ),
        ),

      ),
    );
  }
  Future login() async{
    setState(() {
      isLoading = true;
    });

    Response response = await post(Uri.parse("http://alcaptin.com/api/login"),
        body: {
      //  هنا باصيت قيمه التيكست الي جوا الكنترولر للبودي الي بيتبعت
      "email":email.text,
      "password":password.text,
              });
    dynamic jsonResponse = jsonDecode(response.body);
    if(response.statusCode==200)
    {
      LoginResponse loginResponse =LoginResponse.fromJson(jsonResponse);
      print("${loginResponse.token}");
      Navigator.push(context,MaterialPageRoute(builder:(_)=>BottomNavigation()
      ));
    }else{
      print("please enter curret email or password" );
    }
    setState(() {
      isLoading = false;
    });
  }
}
