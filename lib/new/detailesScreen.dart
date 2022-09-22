import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../model/response.dart';
import 'componant/photo.dart';

class CategoriesScreen extends StatelessWidget {
  final Datum model;
  const CategoriesScreen({Key? key,required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690),minTextAdapt: true,
      splitScreenMode: true,);
    ScreenUtil().setSp(24);
    return Scaffold(
      appBar: AppBar(title: Text(model.name),),
      body:  SingleChildScrollView(
        child:  SafeArea(
          child:model.id==1?
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  Image.asset("assets/images/maskImags.png"),
                  Padding(
                      padding: const EdgeInsets.only(top: 180,left: 125).r,
                      child: Image.network(
                        '$baseUrl${model.image}',
                        width: 100.w,
                        height: 100.w,
                      ),
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
               Text(model.name,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
              Padding(
                padding: const EdgeInsets.all(18).r,
                child: Column(
                  children: [
                    Row(
                      children:  [
                        Text(model.description,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Container(height: 5.h),
                    Row(
                      children: const[
                        Text("23rd Oct 2017",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey),)
                      ],
                    ),
                    Container(height: 10.h),
                    Row(
                      children: const[
                        Text("whatsApp Number",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Container(height: 5.h),
                    Row(
                      children: [
                        Text(model.whatsapp,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey),)
                      ],
                    ),
                    Container(height: 10.h),
                    Row(
                      children: const[
                        Expanded(child: Text("phone number",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),))
                      ],
                    ),
                    Container(height: 5.h),
                    Row(
                      children: [
                        Expanded(child: Text(model.phone,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey),))
                      ],
                    ),
                    Container(height: 10.h),
                    Row(
                      children: const[
                        Expanded(child: Text("قم بشراء منتجات السوبر ماركت أونلاين في علوش . واحصل على أفضل العروض الحصرية والمميزة بخصومات هائلة تصل إلى 70% على خيارات واسعة وعديدة من المنتجات في المنصوره، المحله، نبروه،.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey),))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ):model.id==2?
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  Image.asset("assets/images/maskImags.png"),
                  Padding(
                    padding: const EdgeInsets.only(top: 180,left: 125).r,
                    child: Image.network(
                      '$baseUrl${model.image}',
                      width: 100.w,
                      height: 100.w,
                    ),
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
              Text(model.name,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
              Padding(
                padding: const EdgeInsets.all(18).r,
                child: Column(
                  children: [
                    Row(
                      children:  [
                        Text(model.description,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Container(height: 5.h),
                    Row(
                      children: const[
                        Text("23rd Oct 2017",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey),)
                      ],
                    ),
                    Container(height: 10.h),
                    Row(
                      children: const[
                        Text("whatsApp Number",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Container(height: 5.h),
                    Row(
                      children: [
                        Text(model.whatsapp,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey),)
                      ],
                    ),
                    Container(height: 10.h),
                    Row(
                      children: const[
                        Expanded(child: Text("phone number",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),))
                      ],
                    ),
                    Container(height: 5.h),
                    Row(
                      children: [
                        Expanded(child: Text(model.phone,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey),))
                      ],
                    ),
                    Container(height: 10.h),
                    Row(
                      children: const[
                        Expanded(child: Text("أكبر مول للتسوق أون لاين بمصر. موضة وازياء، مكياج، مستحضرات تجميل، أجهزة منزل، اجهزة تجميل, اجهزة عناية بالبشرة, اجهزة ازالة شعر بالليزر. ألحق أعرف اقوى العروض لاجهزة البشرة دفع آمن، توصيل سريع، الارجاع مجانا,",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey),))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ): Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  Image.asset("assets/images/maskImags.png"),
                  Padding(
                    padding: const EdgeInsets.only(top: 180,left: 125).r,
                    child: Image.network(
                      '$baseUrl${model.image}',
                      width: 100.w,
                      height: 100.w,
                    ),
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
              Text(model.name,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
              Padding(
                padding: const EdgeInsets.all(18).r,
                child: Column(
                  children: [
                    Row(
                      children:  [
                        Text(model.description,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Container(height: 5.h),
                    Row(
                      children: const[
                        Text("23rd Oct 2017",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey),)
                      ],
                    ),
                    Container(height: 10.h),
                    Row(
                      children: const[
                        Text("whatsApp Number",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Container(height: 5.h),
                    Row(
                      children: [
                        Text(model.whatsapp,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey),)
                      ],
                    ),
                    Container(height: 10.h),
                    Row(
                      children: const[
                        Expanded(child: Text("phone number",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),))
                      ],
                    ),
                    Container(height: 5.h),
                    Row(
                      children: [
                        Expanded(child: Text(model.phone,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey),))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ),),
    );
  }
}
