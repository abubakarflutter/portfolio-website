import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class DownloadResumeButton extends StatelessWidget {
  const DownloadResumeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
      child: TextButton(
          onPressed: () {},
          child: FittedBox(
            child: Row(
              children: [
                Text(
                  'DOWNLOAD CV',
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1!.color),
                ),
                const SizedBox(
                  width: defaultPadding / 2,
                ),
                SvgPicture.asset('assets/icons/download.svg')
              ],
            ),
          )),
    );
  }
}
