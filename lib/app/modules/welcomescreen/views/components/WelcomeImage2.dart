import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../data/Constants.dart';

class WelcomeImage2 extends StatelessWidget {
  const WelcomeImage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: defaultPadding * 8),
        Row(
          children: [
            Spacer(),
            Expanded(
              flex: 8,
              child: SvgPicture.asset(
                "assets/icons/chat.svg",
              ),
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: defaultPadding * 1),
      ],
    );
  }
}
