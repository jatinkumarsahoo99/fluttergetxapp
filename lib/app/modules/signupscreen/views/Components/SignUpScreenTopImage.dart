import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../data/Constants.dart';

class SignUpScreenTopImage  extends StatelessWidget {
  const SignUpScreenTopImage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: SvgPicture.asset("assets/icons/signup.svg"),
            ),
            const Spacer(),
          ],
        ),
        SizedBox(height: defaultPadding),
      ],
    );
  }
}
