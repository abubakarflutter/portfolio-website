import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../responsive.dart';
import 'flutter_coded_text.dart';

class AnimatedTextOnImage extends StatelessWidget {
  const AnimatedTextOnImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Responsive.isDesktop(context)
          ? Theme.of(context).textTheme.subtitle1!
          : Theme.of(context).textTheme.subtitle2!,
      maxLines: 1,
      child: SizedBox(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (!Responsive.isMobileLarge(context)) const FlutterCoddedText(),
            if (!Responsive.isMobileLarge(context))
              const SizedBox(
                width: defaultPadding / 2,
              ),
            const Text('I build '),
            Responsive.isMobile(context)
                ? const Flexible(child: MyAnimatedTextLines())
                : const MyAnimatedTextLines(),
            if (!Responsive.isMobileLarge(context))
              const SizedBox(
                width: defaultPadding / 2,
              ),
            if (!Responsive.isMobileLarge(context)) const FlutterCoddedText(),
          ],
        ),
      ),
    );
  }
}

class MyAnimatedTextLines extends StatelessWidget {
  const MyAnimatedTextLines({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(animatedTexts: [
      TyperAnimatedText('Flutter Mobile & Web Apps'),
      TyperAnimatedText('Fully Responsive & Professional'),
      TyperAnimatedText('Elegant & Faster Apps'),
    ]);
  }
}
