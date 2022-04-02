import 'package:flutter/material.dart';

import '../../../../constants.dart';

class CircularExpertiseIndicator extends StatelessWidget {
  const CircularExpertiseIndicator({
    Key? key,
    this.expertLevel,
    this.skillLabel,
  }) : super(key: key);

  final double? expertLevel;
  final String? skillLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: expertLevel),
            duration: defaultDuration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: primaryColor,
                  backgroundColor: darkColor,
                ),
                Center(
                  child: Text(
                    '${(value * 100).toInt()}%',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
          child: Text(
            skillLabel!,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        )
      ],
    );
  }
}
