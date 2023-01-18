import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:getxapp/app/data/Constants.dart';

import '../../../Components/Background.dart';
import '../../../Widgets/Responsive.dart';
import '../controllers/welcomescreen_controller.dart';
import 'components/Login_Signup_Btn.dart';
import 'components/WelcomeImage2.dart';
import 'components/Welcome_image.dart';

class WelcomescreenView extends GetView<WelcomescreenController> {
  const WelcomescreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Responsive(
            desktop: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "WELCOME TO OUR PLATFORM",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                     Expanded(
                      child: WelcomeImage2(),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          Column(
                            children: [
                              SizedBox(
                                width: 450,
                                child: LoginAndSignupBtn(),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 2,
                                              color: kPrimaryColor
                                          ),
                                          shape: BoxShape.circle
                                      ),
                                      child: SvgPicture.asset("assets/icons/google-plus.svg",
                                        height: 20,
                                        width: 20,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 2,
                                              color: kPrimaryColor
                                          ),
                                          shape: BoxShape.circle
                                      ),
                                      child: SvgPicture.asset("assets/icons/facebook.svg",
                                        height: 20,
                                        width: 20,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 2,
                                              color: kPrimaryColor
                                          ),
                                          shape: BoxShape.circle
                                      ),
                                      child: SvgPicture.asset("assets/icons/twitter.svg",
                                        height: 20,
                                        width: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

              ],
            ),
            mobile:  MobileWelcomeScreen(),
          ),
        ),
      ),
    );
  }
}

class MobileWelcomeScreen extends StatelessWidget {
  const MobileWelcomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        WelcomeImage(),
        Row(
          children:  [
            Expanded(
              flex: 8,
              child: LoginAndSignupBtn(),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: kPrimaryColor
                  ),
                  shape: BoxShape.circle
                ),
                child: SvgPicture.asset("assets/icons/google-plus.svg",
                height: 20,
                  width: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: kPrimaryColor
                  ),
                  shape: BoxShape.circle
                ),
                child: SvgPicture.asset("assets/icons/facebook.svg",
                height: 20,
                  width: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: kPrimaryColor
                  ),
                  shape: BoxShape.circle
                ),
                child: SvgPicture.asset("assets/icons/twitter.svg",
                height: 20,
                  width: 20,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}