import 'package:flutter/material.dart';

import '../config/assets.dart';

class SecondaryScaffold extends StatelessWidget {
  final Widget body;
  final bool resizeToAvoidBottomInset;
  const SecondaryScaffold({
    super.key,
    required this.body,
    this.resizeToAvoidBottomInset = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppAssets.background,
          fit: BoxFit.cover,
        ),
        Scaffold(
          body: body,
          resizeToAvoidBottomInset: resizeToAvoidBottomInset,
          backgroundColor: Colors.transparent,
        ),
      ],
    );
  }
}
