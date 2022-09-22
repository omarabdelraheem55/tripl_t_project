import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:triplt_project/new/newtour.dart';
import 'package:triplt_project/new_color/NewColor.dart';
class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);
  @override
  State<Location> createState() => _LocationState();
}
class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690),minTextAdapt: true,
      splitScreenMode: true,);
    ScreenUtil().setSp(24);
    return
      Scaffold(
      backgroundColor: NewColor.background,
      body:
      SingleChildScrollView(
        child: SafeArea(
          child:
          Column(
            children: [
              const SizedBox(height: 10,),
              SizedBox(
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 5,),
                    Image.asset("assets/images/arrow.png",width: 50,height: 50,),
                    Padding(
                      padding: const EdgeInsets.only(left: 80).r,
                      child: const Text(
                        "LOCATION",
                        style: TextStyle(color: Colors.black, fontSize: (24),fontWeight:FontWeight.bold ),
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NewTours()));
                },
                child: Padding(
                 padding: const EdgeInsets.all(16.0).r,
                 child: ClipRRect(
                 borderRadius: BorderRadius.circular(10.r),
                   child:  Image.asset("assets/images/usa.JPG"),
                 ),
             ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NewTours()));
                },
                child: Padding(
                 padding: const EdgeInsets.all(16.0).r,
                 child: ClipRRect(
                 borderRadius: BorderRadius.circular(10).r,
                   child:  Image.asset("assets/images/france.JPG"),
                 ),
             ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NewTours()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0).r,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10).r,
                    child:  Image.asset("assets/images/india.JPG"),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NewTours()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0).r,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10).r,
                    child:  Image.asset("assets/images/england.JPG"),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NewTours()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0).r,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10).r,
                    child:  Image.asset("assets/images/australia.jpg"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
