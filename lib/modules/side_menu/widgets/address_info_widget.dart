import 'package:flutter/material.dart';

import '../../../../constants.dart';

class AddressInfo extends StatelessWidget {
  final String? title, value;

  const AddressInfo({Key? key, this.title, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: const TextStyle(color: Colors.white),
          ),
          Text(value!),
        ],
      ),
    );
  }
}
