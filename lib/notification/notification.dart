import 'package:flutter/material.dart';
import 'package:triplt_project/new_color/NewColor.dart';
class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);
  @override
  State<Notifications> createState() => _NotificationsState();
}
class _NotificationsState extends State<Notifications>{
  int index=10;
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      backgroundColor: NewColor.background,
      body: SingleChildScrollView(
        child: SafeArea(
          child:
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                child: Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                      },
                      child: Image.asset(
                        "assets/images/arrow.png",
                        width: 50,
                        height: 50,
                      ),
                    ),
                    const SizedBox(
                      width: 75,
                    ),
                    const Text(
                      "NOTIFICATION",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 75,
                    ),
                    GestureDetector(onTap: (){
                    },child: Image.asset("assets/icons/cancel.png"),),

                  ],
                ),
              ),
              const Notifications2(),
              const Notifications2(),
              const Notifications2(),
              const Notifications2(),
              const Notifications2(),
              const Notifications2(),
              const Notifications2(),
              const Notifications2(),
              const Notifications2(),
            ],
          ),
        ),
      ),
    );
  }
}
class Notifications2 extends StatelessWidget {
  const Notifications2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child:
          SizedBox(
            child: Row(
              children: [
                ClipRRect(
                  child: Image.asset(
                    "assets/images/imageprofile.png",
                    width: 45,
                    height: 45,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Expanded(child: Text("omar abo elghit and mohamed abd elmaksod like your story..",style: TextStyle(fontWeight: FontWeight.bold),)),

              ],
            ),
          ),
        ),
        Image.asset("assets/images/line.png")
      ],
    );
  }
}

