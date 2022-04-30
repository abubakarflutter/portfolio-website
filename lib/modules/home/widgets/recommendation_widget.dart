import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/recommendation.dart';
import '../components/recommendaion_card.dart';

class RecommendationsWidget extends StatelessWidget {
  const RecommendationsWidget({
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
            'Recommendations',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: defaultPadding),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
                children: List.generate(
              clientsRecommendations.length,
              (index) => RecommendationCard(
                recommendation: clientsRecommendations[index],
              ),
            )),
          ),
        ],
      ),
    );
  }
}
