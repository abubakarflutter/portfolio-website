import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../components/linear_skills_indicator.dart';

class ProfessionalSkillsWidget extends StatelessWidget {
  const ProfessionalSkillsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Professional Skills',
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          const ProfessionalSkillsIndicator(
            skillLabel: 'Dart OOP',
            expertLevel: 0.9,
          ),
          const ProfessionalSkillsIndicator(
            skillLabel: 'State Management',
            expertLevel: 0.75,
          ),
          const ProfessionalSkillsIndicator(
            skillLabel: 'Data Structures',
            expertLevel: 0.65,
          ),
          const ProfessionalSkillsIndicator(
            skillLabel: 'REST APIs',
            expertLevel: 0.85,
          ),
          const ProfessionalSkillsIndicator(
            skillLabel: 'Git / VCS',
            expertLevel: 0.9,
          ),
        ],
      ),
    );
  }
}
