import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class SingleHighLight extends StatelessWidget {
  final Widget? animatedCounter;
  final String? label;

  const SingleHighLight({Key? key, this.label, this.animatedCounter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        animatedCounter!,
        const SizedBox(
          width: defaultPadding / 2,
        ),
        Text(
          label!,
          style: !Responsive.isMobileLarge(context)
              ? Theme.of(context).textTheme.subtitle2
              : Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 13),
        ),
      ],
    );
  }
}
