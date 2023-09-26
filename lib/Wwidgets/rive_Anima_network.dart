import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(MaterialApp(home: rive_anim()));
}

class rive_anim extends StatelessWidget {
  const rive_anim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: RiveAnimation.network(
          'https://public.rive.app/community/runtime-files/5997-11672-kitty-test-mouse-follow.riv',
        ),
      ),
    );
  }
}