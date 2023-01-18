
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../Components/AlreadyHaveAnAccountCheck.dart';
import '../../../../data/Constants.dart';
import '../../../../routes/app_pages.dart';
import '../../../signupscreen/views/signupscreen_view.dart';

class LoginForm extends StatelessWidget {
   LoginForm({Key? key}) : super(key: key);
List<TextEditingController> textEditingController = [
  new TextEditingController(),
  new TextEditingController(),
];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          cursorColor: kPrimaryColor,
          controller: textEditingController[0],
          onSaved: (email) {},
          decoration: InputDecoration(
            hintText: "Your email",
            prefixIcon: Padding(
              padding:  EdgeInsets.all(defaultPadding),
              child: Icon(Icons.person),
            ),
          ),
        ),
        Padding(
          padding:  EdgeInsets.symmetric(vertical: defaultPadding),
          child: TextFormField(
            textInputAction: TextInputAction.done,
            controller: textEditingController[1],
            obscureText: true,
            cursorColor: kPrimaryColor,
            decoration: InputDecoration(
              hintText: "Your password",
              prefixIcon: Padding(
                padding:  EdgeInsets.all(defaultPadding),
                child: Icon(Icons.lock),
              ),
            ),
          ),
        ),
         SizedBox(height: defaultPadding),
        Hero(
          tag: "login_btn",
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "Login".toUpperCase(),
            ),
          ),
        ),
         SizedBox(height: defaultPadding),
        AlreadyHaveAnAccountCheck(
          press: () {
            Get.toNamed(
                Routes.SIGNUPSCREEN
            );
          },
        ),
      ],
    );
  }
}
