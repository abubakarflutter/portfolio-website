import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../components/circular_expertise_indicator.dart';

class ExpertiseSectionWidget extends StatelessWidget {
  const ExpertiseSectionWidget({
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
            'Expertise',
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Row(
            children: const [
              Expanded(
                child: CircularExpertiseIndicator(
                  expertLevel: 0.8,
                  skillLabel: 'Flutter',
                ),
              ),
              SizedBox(
                width: defaultPadding,
              ),
              Expanded(
                child: CircularExpertiseIndicator(
                  expertLevel: 0.95,
                  skillLabel: 'Dart',
                ),
              ),
              SizedBox(
                width: defaultPadding,
              ),
              Expanded(
                child: CircularExpertiseIndicator(
                  expertLevel: 0.7,
                  skillLabel: 'Firebase',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
