import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../Components/Background.dart';
import '../../../Widgets/Responsive.dart';
import '../../../data/Constants.dart';
import '../controllers/signupscreen_controller.dart';
import 'Components/SignUpForm.dart';
import 'Components/SignUpScreenTopImage.dart';

class SignupscreenView extends GetView<SignupscreenController> {
  const SignupscreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Responsive(
          mobile:  MobileSignupScreen(),
          desktop: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.24,
              ),
              Text(
                "Sign Up".toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              // SizedBox(height: defaultPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   Expanded(
                    child: SignUpScreenTopImage(),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        SizedBox(
                          width: 450,
                          child: SignUpForm(),
                        ),
                        SizedBox(height: defaultPadding / 2),
                        // SocalSignUp()
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class MobileSignupScreen extends StatelessWidget {
  const MobileSignupScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
         SignUpScreenTopImage(),
        Row(
          children:  [
            Spacer(),
            Expanded(
              flex: 8,
              child: SignUpForm(),
            ),
            Spacer(),
          ],
        ),
        // const SocalSignUp()
      ],
    );
  }
}