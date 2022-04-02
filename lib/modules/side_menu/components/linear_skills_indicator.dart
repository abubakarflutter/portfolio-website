import 'package:flutter/material.dart';

import '../../../../constants.dart';

class ProfessionalSkillsIndicator extends StatelessWidget {
  const ProfessionalSkillsIndicator(
      {Key? key, this.skillLabel, this.expertLevel})
      : super(key: key);

  final String? skillLabel;
  final double? expertLevel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: expertLevel),
        duration: defaultDuration,
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    skillLabel!,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
                Text(
                  '${(value * 100).toInt()}%',
                ),
              ],
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            LinearProgressIndicator(
              value: value,
              color: primaryColor,
              backgroundColor: darkColor,
            ),
          ],
        ),
      ),
    );
  }
}
