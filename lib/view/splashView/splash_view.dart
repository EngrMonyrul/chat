import 'package:animate_do/animate_do.dart';
import 'package:eshop/controls/hide_status_bar.dart';
import 'package:eshop/controls/widgets/foregroundText.dart';
import 'package:eshop/controls/widgets/label_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controls/widgets/text_shadow.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    hideStatusBar();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                BounceInDown(
                  child: foregroundText(),
                ),
                Positioned(
                  left: 8,
                  top: 5,
                  child: SlideInLeft(
                    child: shadowText(),
                  ),
                ),
              ],
            ),
            SlideInLeft(
              child: labelText(),
            ),
          ],
        ),
      ),
    );
  }
}
