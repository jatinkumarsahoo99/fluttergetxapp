import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/splashscreen_controller.dart';


class SplashscreenView extends GetView<SplashscreenController> {

  @override
  SplashscreenController controller = Get.find<SplashscreenController>();

  SplashscreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
                width: 300,
                child: Lottie.asset("assets/online-learning.json"),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.8,
                color: Colors.amberAccent,
                child: FittedBox(
                  // alignment: Alignment.topCenter,
                  fit: BoxFit.scaleDown,
                  child: Center(child: Text("Education Is The Most Powerful Weapon Which You Can Use To CHANGE THE WORLD",
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
                  )),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.8,
                color: Colors.amberAccent,
                child: FittedBox(
                  child: Center(child: Text("गुरू ब्रह्मा गुरू विष्णु, गुरु देवो महेश्वरा गुरु साक्षात परब्रह्म, तस्मै श्री गुरुवे नम",
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
                  )),
                ),
              ),


            ],
          ),
        ),
      )
    );
  }
}
