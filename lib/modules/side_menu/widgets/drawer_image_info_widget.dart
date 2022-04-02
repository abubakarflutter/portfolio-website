import 'package:flutter/material.dart';

class MyAvatarAndName extends StatefulWidget {
  const MyAvatarAndName({
    Key? key,
  }) : super(key: key);

  @override
  State<MyAvatarAndName> createState() => _MyAvatarAndNameState();
}

class _MyAvatarAndNameState extends State<MyAvatarAndName> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.22,
      child: Container(
        color: const Color(0xFF242430),
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/abubakar-cover.png'),
              backgroundColor: Color(0xFF242430),
              radius: 50,
            ),
            const Spacer(),
            Text(
              'Muhammad Abubakar',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const Text(
              'Flutter & Firebase Developer',
              textAlign: TextAlign.center,
              style: TextStyle(height: 1.4, fontWeight: FontWeight.w200),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
