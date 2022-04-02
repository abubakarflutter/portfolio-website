import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../responsive.dart';
import '../components/animated_text.dart';

class DashboardImageWidget extends StatelessWidget {
  const DashboardImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/bg.jpeg',
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: defaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Discover My Amazing \nDevelopment Space',
                        style: Responsive.isDesktop(context)
                            ? Theme.of(context).textTheme.headline3!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white)
                            : !Responsive.isMobileLarge(context)
                                ? Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)
                                : Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                      ),
                      if (Responsive.isMobileLarge(context))
                        const SizedBox(
                          height: defaultPadding / 2,
                        ),
                      const AnimatedTextOnImage(),
                      const SizedBox(
                        height: defaultPadding,
                      ),
                      if (!Responsive.isMobileLarge(context))
                        ElevatedButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  vertical: defaultPadding,
                                  horizontal: defaultPadding * 2),
                              backgroundColor: primaryColor),
                          child: const Text(
                            'Explore Now',
                            style: TextStyle(color: darkColor),
                          ),
                        )
                    ],
                  ),
                ),
                if (!Responsive.isMobileLarge(context))
                  Image.asset('assets/images/abubakar-cover.png')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
