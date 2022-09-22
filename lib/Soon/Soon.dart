import 'package:flutter/material.dart';
import 'package:triplt_project/new_color/NewColor.dart';

class Soon extends StatelessWidget {
  const Soon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration( gradient: LinearGradient(
              colors: [
                NewColor.loginBackground,
                NewColor.calendarBackground,
              ]
          ),),
          child:
          const Center(child: Text("coming soon .....",style: TextStyle(fontSize: 32,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),))),
    );
  }
}
