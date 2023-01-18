import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../data/Constants.dart';

class LoginScreenTopImage  extends StatelessWidget {
   LoginScreenTopImage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 8,
              child: SvgPicture.asset("assets/icons/login.svg"),
            ),

          ],
        ),
      ],
    );
  }
}
