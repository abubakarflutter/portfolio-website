import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialLinksWidget extends StatelessWidget {
  const SocialLinksWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF24242E),
      child: Row(
        children: [
          const Spacer(),
          IconButton(
            onPressed: () {
              html.window
                  .open('https://linkedin.com/in/abubakarflutter', 'new tab');
            },
            icon: SvgPicture.asset('assets/icons/linkedin.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/github.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/dribble.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/behance.svg'),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
