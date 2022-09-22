import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:triplt_project/new_color/NewColor.dart';
class ParisPage extends StatefulWidget {
  const ParisPage({Key? key}) : super(key: key);

  @override
  State<ParisPage> createState() => _ParisPageState();
}

class _ParisPageState extends State<ParisPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690),minTextAdapt: true,
      splitScreenMode: true,);
    ScreenUtil().setSp(24);
    return Scaffold(
      backgroundColor: NewColor.background,
      body: 
     SingleChildScrollView(
       child:  SafeArea(
       child:
       Column(
         mainAxisSize: MainAxisSize.max,
         children: [
          Container(height: 10.h,),
           SizedBox(
             child: Row(
               children: [
                 Container(width: 10.w,),
                 const Icon(Icons.arrow_back_ios_sharp,color: Colors.grey,size: 24,),
                 Container(width: 15.w,),
                 GestureDetector(onTap:(){Navigator.pop(context);},child: const Text("Back",style: TextStyle(fontSize: 20,color: Colors.grey),)),
                 Container(width: 70.w,),
                 const Text(
                   "Paris",
                   style: TextStyle(
                       color: Colors.black,
                       fontSize: 26,
                       fontWeight: FontWeight.bold),
                 ),
                 Container(width: 120.w,),
                 GestureDetector(onTap: (){
                 },child: const Icon(Icons.search,color: Colors.grey,size: 24,),
                 ),
               ],
             ),
           ),
           Container(height: 10.h,),
           Stack(
             children: [
               Image.asset("assets/images/maskImags.png"),
                Padding(
                 padding:  EdgeInsets.all(60).r,
                 child: Text("   Top 10 Favourite Destination In Paris",style: TextStyle(fontSize: 28,color: Colors.white,),),
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 130,left: 80).r,
                 child: Image.asset("assets/images/image2.png")
               ),
               Padding(
                 padding: const EdgeInsets.only(left:0,top: 170,right:300).r,
                 child: Image.asset("assets/images/image1.jpg",width: 150.w,height: 130.h,)
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 340,top:210 ),
                 child: Image.asset("assets/images/image3.jpg",width:150.w,height: 90.h)
               ),

               
             ],
           ),
           const Text("Disneyland Paris",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
           Padding(
             padding: const EdgeInsets.all(28),
             child: Column(
               children: [
                 Row(
                   children: const [
                     Text("Departure",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                   ],
                 ),
                 const SizedBox(height: 8,),
                 Row(
                   children: const[
                     Text("23rd Oct 2017",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey),)
                   ],
                 ),
                 const SizedBox(height: 16,),
                 Row(
                   children: const[
                     Text("Departure",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                   ],
                 ),
                 const SizedBox(height: 8,),
                 Row(
                   children: const[
                     Text("5 Days / 4 Nights",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey),)
                   ],
                 ),
                 const SizedBox(height: 16,),
                 Row(
                   children: const[
                     Expanded(child: Text("Discover 7 World Heritage Sites in this      tour.",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),))
                   ],
                 ),
                 const SizedBox(height: 8,),
                 Row(
                   children: const[
                     Expanded(child: Text("Fans of Mickey can visit Disneyland Paris which is located 32 km from central Paris, with connection to the suburban RER A.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey),))
                   ],
                 ),
                 const SizedBox(height: 16,),
                 Row(
                   children: const[
                     Expanded(child: Text("Disneyland Paris has two theme parks: Disneyland (with Sleeping Beauty's castle) and Walt Disney Studios. Top attractions are Space Mountain, It's a Small World and Big Thunder Mountain.   ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey),))
                   ],
                 ),
               ],
             ),
           ),
         ],
       ),
     ),),
    );
  }
}
