import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../components/personal_skills_widget.dart';

class PersonalSkillsSection extends StatelessWidget {
  const PersonalSkillsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Personal Skills',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const PersonalSkillWidget(
          skillLabel: 'Problem Solving',
        ),
        const PersonalSkillWidget(
          skillLabel: 'Critical Thinking',
        ),
        const PersonalSkillWidget(
          skillLabel: 'Creativity',
        ),
        const PersonalSkillWidget(
          skillLabel: 'Communication',
        ),
        const PersonalSkillWidget(
          skillLabel: 'Collaboration',
        ),
      ],
    );
  }
}
