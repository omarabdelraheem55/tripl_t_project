import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:triplt_project/login/new_login.dart';
import 'package:triplt_project/new_color/NewColor.dart';
class  Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);
  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  void initState() {
    super.initState();
  }
  final _controller= PageController();
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690),minTextAdapt: true,
      splitScreenMode: true,);
    ScreenUtil().setSp(24);
    return Scaffold(
        body:
        Column(
          children: [
            Expanded(
              child:
              PageView(
                controller:_controller,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                     Container(height :40.0.h),
                      SizedBox(
                        child: Image.asset("assets/images/logoimage2.png",
                          height: 70.h,
                        ),
                      ),
                      Container(height :40.0.h),
                      Image.asset("assets/images/Vector 1.png",
                        height: 300.h,
                      ),
                       Container(height: 59.1.h),
                      const
                      Center(
                        child: Text("Plan Your Trip",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(height :10.0.h),
                      const Center(
                        child: Text("plain your trip,choose your destination",
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const Center(
                        child: Text("pick the best place for your holiday",
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                       Container(height :20.0.h),
                      Padding(
                        padding: const EdgeInsets.all(32).r,
                        child:
                        Row(
                          children: [
                            GestureDetector(
                              onTap: ()
                              {
                                _controller.previousPage(duration:const Duration(milliseconds:1 ) , curve:Curves.easeIn);
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
                              }, child: const Text("Skip",style: TextStyle(fontSize: 16,color: Colors.grey),),),
                            const Expanded(child: SizedBox()),
                            GestureDetector(
                              onTap: ()
                              {
                                _controller.nextPage(duration:const Duration(milliseconds:1 ) , curve:Curves.easeIn);
                              }, child: const Text("Next",style: TextStyle(fontSize: 16,color: NewColor.calendarBackground),),)
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(height :40.0.h),
                      SizedBox(
                        child: Image.asset("assets/images/logoimage2.png",
                          height: 70.h,
                        ),
                      ),
                      const SizedBox(height :40.0),
                      SizedBox(
                        child: Image.asset("assets/images/Vector Image2.png",
                          height: 300.h,
                        ),
                      ),
                      Container(height: 59.1.h),
                      const Center(
                        child: Text("Select The Data",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(height :10.0.h),
                      const Center(
                        child: Text("select the day ,book your ticket.We give",
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const Center(
                        child: Text("you the best price, we guarantied!",
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Container(height :20.0.h),
                      Padding(
                        padding: const EdgeInsets.all(32).r,
                        child:
                        Row(
                          children: [
                            GestureDetector(
                              onTap: ()
                              {
                                _controller.previousPage(duration:const Duration(milliseconds:1 ) , curve:Curves.easeIn);
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
                              }, child: const Text("Skip",style: TextStyle(fontSize: 16,color: Colors.grey),),),
                            const Expanded(child: SizedBox()),
                            GestureDetector(
                              onTap: ()
                              {
                                _controller.nextPage(duration:const Duration(milliseconds:1 ) , curve:Curves.easeIn);
                              }, child: const Text("Next",style:  TextStyle(fontSize: 16,color: NewColor.calendarBackground),),)
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(height :40.0.h),
                      SizedBox(
                        child: Image.asset("assets/images/logoimage2.png",
                          height: 70.h,
                        ),
                      ),
                      Container(height :40.0.h),
                      SizedBox(
                        child: Image.asset("assets/images/Vector Image3.png",
                          height: 300.h,
                        ),
                      ),
                      Container(height: 59.1.h),
                      const Center(
                        child: Text("Enjoy Your Trip",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),

                      const Center(
                        child: Text("Enjoy your holiday!don/t forget to tack",
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const Center(
                        child: Text("a photo and share to the world",
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Container(height :70.0.h),
                      IconButton(onPressed: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignIn()));
                      }, icon: const Text("LETS GO!",
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ))
                    ],
                  ),
                ],
              ),
            ),
           SmoothPageIndicator(controller:_controller,count: 3,effect: const SwapEffect(dotHeight: 18,dotWidth: 18,activeDotColor: NewColor.backgroundlanguage,),),
          ],
        )
    );
  }
}