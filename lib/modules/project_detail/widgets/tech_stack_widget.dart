import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../responsive.dart';
import '../components/tech_stack_card.dart';

class TechStackWidget extends StatelessWidget {
  const TechStackWidget({
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
            'Technology Stack',
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colors.white),
          ),
        ),
        !Responsive.isMobileLarge(context)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  TechStackCard(
                      glowColor: Colors.blue,
                      techName: 'Flutter',
                      imageUrl: 'https://i.ibb.co/KXhh82V/flutter-icon.png'),
                  TechStackCard(
                      glowColor: Colors.red,
                      techName: 'Laravel',
                      imageUrl:
                          'https://i.ibb.co/nb6NYp8/800px-Laravel-svg.png'),
                  TechStackCard(
                      glowColor: primaryColor,
                      techName: 'Firebase',
                      imageUrl: 'https://i.ibb.co/Cb5gdhk/firebase-icon.png'),
                  TechStackCard(
                      glowColor: Colors.blue,
                      techName: 'Rest APIs',
                      imageUrl: 'https://i.ibb.co/7vbDqxs/rest-api-icon.png'),
                ],
              )
            : Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      TechStackCard(
                          glowColor: Colors.blue,
                          techName: 'Flutter',
                          imageUrl:
                              'https://i.ibb.co/KXhh82V/flutter-icon.png'),
                      TechStackCard(
                          glowColor: Colors.red,
                          techName: 'Laravel',
                          imageUrl:
                              'https://i.ibb.co/nb6NYp8/800px-Laravel-svg.png'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      TechStackCard(
                          glowColor: primaryColor,
                          techName: 'Firebase',
                          imageUrl:
                              'https://i.ibb.co/Cb5gdhk/firebase-icon.png'),
                      TechStackCard(
                          glowColor: Colors.blue,
                          techName: 'Rest APIs',
                          imageUrl:
                              'https://i.ibb.co/7vbDqxs/rest-api-icon.png'),
                    ],
                  ),
                ],
              ),
      ],
    );
  }
}
