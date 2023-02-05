import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../Components/AlreadyHaveAnAccountCheck.dart';
import '../../../Components/Background.dart';
import '../../../Widgets/Responsive.dart';
import '../../../data/Constants.dart';
import '../../../routes/app_pages.dart';
import '../controllers/loginscreen_controller.dart';
import 'components/LoginForm.dart';
import 'components/LoginScreenTopImage.dart';

class LoginscreenView extends GetView<LoginscreenController> {
  const LoginscreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Responsive(
        mobile:  MobileLoginScreen(),
        desktop: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                 Expanded(
                  child: LoginScreenTopImage(),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      SizedBox(
                        width: 450,
                        child: LoginForm(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class MobileLoginScreen extends StatelessWidget {
   MobileLoginScreen({
    Key? key,
  }) : super(key: key);
   List<TextEditingController> textEditingController = [
     new TextEditingController(),
     new TextEditingController(),
   ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             LoginScreenTopImage(),
            Row(
              children:  [
                Spacer(),
                Expanded(
                  flex: 8,
                  child: loginForm(),
                ),
                Spacer(),

              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget loginForm(){
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
        ElevatedButton(
          onPressed: () {},
          child: Text(
            "Login".toUpperCase(),
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
