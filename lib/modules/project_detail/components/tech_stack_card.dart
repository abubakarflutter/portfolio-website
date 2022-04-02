import 'package:flutter/material.dart';

import '../../../constants.dart';

class TechStackCard extends StatefulWidget {
  final String? imageUrl;
  final String? techName;
  final Color? glowColor;

  const TechStackCard(
      {Key? key,
      required this.imageUrl,
      required this.techName,
      required this.glowColor})
      : super(key: key);

  @override
  State<TechStackCard> createState() => _TechStackCardState();
}

class _TechStackCardState extends State<TechStackCard> {
  bool? cardIsHovered = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: InkWell(
        onHover: (value) {
          // debugPrint('hi how are you 2222');
          setState(() {
            cardIsHovered = value;
          });
        },
        onTap: () {
          // debugPrint('hi how are you');
        },
        child: AnimatedContainer(
          padding: const EdgeInsets.all(defaultPadding / 2),
          height: 130,
          width: 130,
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(8.0),
            border: cardIsHovered!
                ? Border.all(color: widget.glowColor!, width: 1)
                : null,
            boxShadow: cardIsHovered!
                ? [
                    BoxShadow(
                      color: widget.glowColor!.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    )
                  ]
                : null,
          ),
          duration: const Duration(milliseconds: 500),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                widget.imageUrl!,
                height: 50,
                width: 50,
              ),
              const SizedBox(
                height: defaultPadding / 2,
              ),
              Text(
                widget.techName!,
                style: Theme.of(context).textTheme.subtitle2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
