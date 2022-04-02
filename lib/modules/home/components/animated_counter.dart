import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class AnimatedCounter extends StatelessWidget {
  final int? value;

  const AnimatedCounter({
    Key? key,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 0, end: value),
      duration: defaultDuration,
      builder: (context, value, child) => Text(
        '$value+',
        style: !Responsive.isMobileLarge(context)
            ? Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: primaryColor)
            : Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: primaryColor, fontSize: 14),
      ),
    );
  }
}
