import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:triplt_project/Screen2/Screen2.dart';
import 'package:triplt_project/location/Location.dart';
import 'package:triplt_project/new_color/NewColor.dart';
import 'package:triplt_project/notification/notification.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
 int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690),minTextAdapt: true,
      splitScreenMode: true,);
    ScreenUtil().setSp(24);
    return Scaffold(
      backgroundColor: NewColor.background,
      body:
      SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0).r,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  GestureDetector(onTap: (){
                  },child: Image.asset("assets/icons/cancel.png"),),
                  ],
                ),
              ),
              ClipRRect(
                child: Image.asset("assets/images/imageprofile.png"),
              ),
              Container(height: 16.h),
              const Text(
                "Amr Zain",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const Text(
                "amr_zain@gmail.com",
                style:  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.grey),
              ),
            Container(height: 30.h),
              Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Notifications()));
                    },
                    child: Row(
                      children: [
                       Container(width: 15.w),
                        Stack(
                          children: [
                            Container(
                              width:32.h,
                              height:32.h,
                              decoration: BoxDecoration(
                                color:Colors.red ,
                                borderRadius: BorderRadius.circular(25).r
                              ),
                            ),
                             Padding(
                              padding:  EdgeInsets.all(4.0).r,
                              child: Icon(Icons.notifications,size: 28,color: Colors.white,),
                            )
                          ],
                        ),
                       Container(width: 18.w),
                        const Text("Notification",style: TextStyle(fontWeight: FontWeight.bold),),
                        const Text("04",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                        Container(width: 180.w),
                       //Image.asset("assets/icons/NotificationIcon.png")
                      ],
                    ),
                  ),
                  Container(height: 10.h),
                  GestureDetector(
                    onTap: (){},
                    child: Row(
                      children: [
                       Container(width: 15.w),
                        Stack(
                          children: [
                            Container(
                              width:32.h,
                              height:32.h,
                              decoration: BoxDecoration(
                                  color:NewColor.backgroundtours ,
                                  borderRadius: BorderRadius.circular(25).r
                              ),
                            ),
                            Image.asset("assets/icons/toursicon.png",width: 35.w,height: 35.w,)
                          ],
                        ),
                       Container(width: 15.w,),
                        const Text("Tours",style: TextStyle(fontWeight: FontWeight.bold),),
                       Container(width: 230.w,),
                      //  Image.asset("assets/icons/NotificationIcon.png")
                      ],
                    ),
                  ),
                 Container(height: 10.h),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Location()));
                    },
                    child: Row(
                      children: [
                        Container(width: 15.w),
                        Stack(
                          children: [
                            Container(
                              width:32.h,
                              height:32.h,
                              decoration: BoxDecoration(
                                  color:NewColor.backgroundlocation ,
                                  borderRadius: BorderRadius.circular(25).r
                              ),
                            ),
                             Padding(
                              padding:  EdgeInsets.all(6.0).r,
                              child: Icon(Icons.location_on,color: Colors.white,),
                            )
                          ],
                        ),
                       Container(width: 18.w),
                        const Text("Location          ",style: TextStyle(fontWeight: FontWeight.bold),),
                       Container(width: 180.w,),
                        //Image.asset("assets/icons/NotificationIcon.png")
                      ],
                    ),
                  ),
                 Container(height: 10.h),
                  GestureDetector(
                    onTap: (){},
                    child: Row(
                      children: [
                        Container(width: 15.w),
                        Stack(
                          children: [
                            Container(
                              width:32.h,
                              height:32.h,
                              decoration: BoxDecoration(
                                  color:NewColor.backgroundlanguage ,
                                  borderRadius: BorderRadius.circular(25).r
                              ),
                            ),
                             Padding(
                              padding:  EdgeInsets.all(6.0).r,
                              child: Icon(Icons.language,color: Colors.white,),
                            )
                          ],
                        ),
                       Container(width: 18.w),
                        const Text("Language        ",style: TextStyle(fontWeight: FontWeight.bold),),
                       Container(width: 180.w,),
                       // Image.asset("assets/icons/NotificationIcon.png")
                      ],
                    ),
                  ),
                 Container(height: 16.w),
                  GestureDetector(
                    onTap: (){},
                    child: Row(
                      children: [
                        Container(width: 15.w),
                        Stack(
                          children: [
                            Container(
                              width:32.h,
                              height:32.h,
                              decoration: BoxDecoration(
                                  color:NewColor.backgroundinvite ,
                                  borderRadius: BorderRadius.circular(25).r
                              ),
                            ),
                            const Padding(
                              padding:  EdgeInsets.all(6.0),
                              child: Icon(Icons.group,color: Colors.white,),
                            )
                          ],
                        ),
                        Container(width: 18.w),
                        const Text("Invite Friendes",style: TextStyle(fontWeight: FontWeight.bold),),
                       Container(width: 176.w),
                       // Image.asset("assets/icons/NotificationIcon.png")
                      ],
                    ),
                  ),
                Container(height: 16.h),
                  Image.asset("assets/images/line.png",height: 10,),
                  Container(height: 16.h),
                  Row(
                    children: [
                     Container(width: 15.w,),
                      Stack(
                        children: [
                          Container(
                            width:32.h,
                            height:32.h,
                            decoration: BoxDecoration(
                                color:NewColor.backgroundhelpcenter,
                                borderRadius: BorderRadius.circular(25).r
                            ),
                          ),
                           Padding(
                            padding:  EdgeInsets.all(6.0).r,
                            child: Icon(Icons.headset_mic_rounded,color: Colors.white,),
                          )
                        ],
                      ),
                      Container(width: 18.w),
                      const Text("Help Center    ",style: TextStyle(fontWeight: FontWeight.bold),),
                     Container(width: 180.w,),
                      //Image.asset("assets/icons/NotificationIcon.png")
                    ],
                  ),
                  Container(height: 16.h),
                  Row(
                    children: [
                     Container(width: 15.w,),
                      Stack(
                        children: [
                          Container(
                            width:32.h,
                            height:32.h,
                            decoration: BoxDecoration(
                                color:NewColor.backgroundhsetting ,
                                borderRadius: BorderRadius.circular(25).r
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.all(6.0),
                            child: Icon(Icons.settings,color: Colors.white,),
                          )
                        ],
                      ),
                     Container(width: 18.w),
                      const Text("Setting            ",style: TextStyle(fontWeight: FontWeight.bold),),
                     Container(width: 180.w,),
                      // Image.asset("assets/icons/NotificationIcon.png")
                    ],
                  ),
                Container(height: 16.h,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Screen2()));
                    },
                    child: Row(
                      children: [
                       Container(width: 15.w,),
                        Stack(
                          children: [
                            Container(
                              width:32.h,
                              height:32.h,
                              decoration: BoxDecoration(
                                  color:NewColor.backgroundhlogout ,
                                  borderRadius: BorderRadius.circular(25).r
                              ),
                            ),
                            const Padding(
                              padding:  EdgeInsets.all(8.0),
                              child: Icon(Icons.logout_outlined,color: Colors.white,),
                            )
                          ],
                        ),
                        Container(width: 18.w,),
                        const Text("Log Out                  ",style: TextStyle(fontWeight: FontWeight.bold),),
                        Container(width: 180,),
                        // Image.asset("assets/icons/NotificationIcon.png")
                      ],
                    ),
                  ),
                  Container(height: 30.h,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
