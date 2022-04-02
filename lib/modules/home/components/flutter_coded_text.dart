import 'package:flutter/material.dart';

import '../../../constants.dart';

class FlutterCoddedText extends StatelessWidget {
  const FlutterCoddedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: '<',
        children: [
          TextSpan(text: 'flutter', style: TextStyle(color: primaryColor)),
          TextSpan(
            text: '>',
          )
        ],
      ),
    );
  }
}
