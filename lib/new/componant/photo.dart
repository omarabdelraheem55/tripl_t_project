import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../model/response.dart';
class Defaultphotos extends StatefulWidget {
  const Defaultphotos({Key? key}) : super(key: key);

  @override
  State<Defaultphotos> createState() => _DefaultphotosState();
}

class _DefaultphotosState extends State<Defaultphotos> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690),minTextAdapt: true,
      splitScreenMode: true,);
    ScreenUtil().setSp(24);
    return Container();
  }
}

Widget Defaultphoto()=> Padding(
  padding: const EdgeInsets.all(8.0),
  child: SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child:
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // المسافه
        Container(
          width: 10.h,
        ),
        Container(
          height: 130.h,
          width: 130.h,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                    top: const Radius.circular(25)).r,
                child: Image.asset(
                  "assets/images/india.jpeg",
                  width: 130.h,
                  height: 80.h,
                ),
              ),
              Container(height: 7.h,),
              const Text(
                "  India",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        // المسافه
        Container(
          width: 10.h,
        ),
        Container(
          height: 130.h,
          width: 130.h,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius:
                const BorderRadius.vertical(top: Radius.circular(25)).r,
                child: Image.asset(
                  "assets/images/newyork.jpeg",
                  width: 130.h,
                  height: 80.h,
                ),
              ),
              Container(height: 7.h,),
              const Text(
                "  New York",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        // المسافه
        Container(
          width: 10.h,
        ),
        Container(
          height: 130.h,
          width: 130.h,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                    top: const Radius.circular(25)).r,
                child: Image.asset(
                  "assets/images/losanglos.jpeg",
                  width: 130.h,
                  height: 80.h,
                ),
              ),
              Container(height: 7.h,),
              const Text(
                "  Los Angeles",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        // المسافه
        Container(
          width: 10.h,
        ),
        Container(
          height: 130.h,
          width: 130.h,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                    top: const Radius.circular(25)).r,
                child: Image.asset(
                  "assets/images/egypt.jpg",
                  width: 130.h,
                  height: 80.h,
                ),
              ),
             Container(
                height: 7.h,
              ),
              const Text(
                "  Egypt",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ),
);

Widget DefaultPhoto2() => SizedBox(
  child: Stack(
    children: [
      Image.asset(
        "assets/images/playing.jpeg",
        width: double.infinity,
      ),
       Padding(
        padding: EdgeInsets.fromLTRB(150, 20, 0, 0).r,
        child: Text(
          "SAVE up to 45%",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
       Padding(
        padding: const EdgeInsets.fromLTRB(150, 45, 0, 0).r,
        child: Text(
          "CATANOUNT,HILLSDAL,NY",
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
          ),
        ),
      ),
    ],
  ),
);
const String baseUrl = 'http://alcaptin.com/';

Widget DefaultPhoto3({required Datum model}) => Padding(
  padding: const EdgeInsets.all(8.0).r,
  child: Stack(
    children: [
      Image.network(
        '$baseUrl${model.image}',
        height: 200.r,
      ),
      Positioned(
          bottom: 20,left: 100 ,child: Text(model.name)),
    ],
  ),
);

