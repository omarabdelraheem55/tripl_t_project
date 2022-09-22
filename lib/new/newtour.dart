
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:triplt_project/Provider/new_provider.dart';

import 'componant/photo.dart';
import 'detailesScreen.dart';

class NewTours extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690),minTextAdapt: true,
      splitScreenMode: true,);
    ScreenUtil().setSp(24);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset("assets/images/arrow.png"),
        ),
        title: Center(
          child: const Text(
            "TOURS    ",
            style: TextStyle(
                color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Container(
              height: 5.0.h,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0).r,
              child: Text(
                "Popular Destination",
                style: TextStyle(
                  color: Colors.blue[600],
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
           Container(
              height: 10.h,
            ),
             Padding(
              padding: EdgeInsets.fromLTRB(8.0, 0, 0, 0).r,
              child: Text(
                "10 Tours Avialable",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
            Defaultphoto(),
            DefaultPhoto2(),
            Container(
              height: 10.h,
            ),
            ChangeNotifierProvider.value(
              value: NewTourProvider(),
              child: Consumer<NewTourProvider>(
                builder: (context, provider, child) => FutureBuilder(
                    future: provider.getCategories(),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Container(
                          color: Colors.blue,
                          height: 50.h,
                          width: 45.w,
                        );
                      } else if (snapshot.hasData) {
                        return Container(
                          height: 360.h,
                          child: Column(
                            children: [
                              const Text(
                                "Discover New Places",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                height: 10.h,
                              ),
                              Container(
                                height: 320.h,
                                child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) => InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                CategoriesScreen(
                                                  model: provider
                                                      .ListOfCategories[index],
                                                ),
                                          ),
                                        );
                                      },
                                      child: DefaultPhoto3(
                                          model: provider
                                              .ListOfCategories[index])),
                                  separatorBuilder: (context, index) =>
                                      Container(
                                        height: 10.h,
                                      ),
                                  itemCount: provider.ListOfCategories.length,
                                ),
                              ),
                            ],
                          ),
                        );
                      } else {
                        return const Center(
                            child: CircularProgressIndicator.adaptive());
                      }
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
