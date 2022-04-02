import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../responsive.dart';
import '../components/animated_counter.dart';
import '../components/single_highlight.dart';

class HighLightsInfoWidget extends StatelessWidget {
  const HighLightsInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding / 2, vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SingleHighLight(
                      animatedCounter: AnimatedCounter(
                        value: 1,
                      ),
                      label: 'Years Experience',
                    ),
                    SingleHighLight(
                      animatedCounter: AnimatedCounter(
                        value: 200,
                      ),
                      label: 'Hours Coding',
                    ),
                  ],
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SingleHighLight(
                      animatedCounter: AnimatedCounter(
                        value: 8,
                      ),
                      label: 'Projects',
                    ),
                    SingleHighLight(
                      animatedCounter: AnimatedCounter(
                        value: 11,
                      ),
                      label: 'Happy Customers',
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SingleHighLight(
                  animatedCounter: AnimatedCounter(
                    value: 1,
                  ),
                  label: 'Years Experience',
                ),
                SingleHighLight(
                  animatedCounter: AnimatedCounter(
                    value: 8,
                  ),
                  label: 'Projects',
                ),
                SingleHighLight(
                  animatedCounter: AnimatedCounter(
                    value: 200,
                  ),
                  label: 'Hours of Coding',
                ),
                SingleHighLight(
                  animatedCounter: AnimatedCounter(
                    value: 11,
                  ),
                  label: 'Happy Customers',
                ),
              ],
            ),
    );
  }
}
