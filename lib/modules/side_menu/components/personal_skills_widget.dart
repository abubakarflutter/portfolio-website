import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants.dart';

class PersonalSkillWidget extends StatelessWidget {
  const PersonalSkillWidget({
    Key? key,
    this.skillLabel,
  }) : super(key: key);

  final String? skillLabel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/check.svg'),
          const SizedBox(
            width: defaultPadding / 2,
          ),
          Text(skillLabel!),
        ],
      ),
    );
  }
}
