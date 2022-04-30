import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../constants.dart';
import '../../../models/recommendation.dart';

class RecommendationCard extends StatelessWidget {
  final Recommendation recommendation;

  const RecommendationCard({Key? key, required this.recommendation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(right: defaultPadding, top: defaultPadding),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topRight,
        children: [
          Container(
            width: 300,
            padding: const EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
                color: secondaryColor, borderRadius: BorderRadius.circular(8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  recommendation.name!,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                Text(
                  recommendation.source!,
                  style: const TextStyle(fontStyle: FontStyle.italic),
                ),
                const SizedBox(height: defaultPadding),
                Text(
                  recommendation.text!,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(height: 1.5),
                ),
                const SizedBox(height: defaultPadding / 2),
                Container(
                  decoration: BoxDecoration(
                      color: bgColor, borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                    child: RatingBarIndicator(
                      rating: recommendation.clientRating!,
                      itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: primaryColor,
                        // color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 15,
                      unratedColor: Colors.amber.withAlpha(50),
                      direction: Axis.horizontal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 30,
            top: -20,
            child: CircleAvatar(
              backgroundImage: NetworkImage(recommendation.imageUrl!),
              radius: 30,
            ),
          ),
        ],
      ),
    );
  }
}
