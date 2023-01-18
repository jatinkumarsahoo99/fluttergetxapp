import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../data/Constants.dart';
import '../../../../routes/app_pages.dart';
import '../../../loginscreen/views/loginscreen_view.dart';
import '../../../signupscreen/views/signupscreen_view.dart';

class LoginAndSignupBtn extends StatelessWidget {
  const LoginAndSignupBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: ElevatedButton(

            onPressed: () {


              Get.toNamed(
                  Routes.LOGINSCREEN
              );
            },
            child: Text(
              "Login".toUpperCase(),
            ),
          ),
          width: MediaQuery.of(context).size.width*0.9,
        ),
         SizedBox(height: 6),
        Container(
          width: MediaQuery.of(context).size.width*0.9,
          child: ElevatedButton(
            onPressed: () {
              Get.toNamed(
                  Routes.SIGNUPSCREEN
              );
            },
            style: ElevatedButton.styleFrom(
                primary: kPrimaryLightColor, elevation: 0),
            child: Text(
              "Sign Up".toUpperCase(),
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
