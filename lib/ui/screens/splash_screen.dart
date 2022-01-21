import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 50.h,
              right: 0,
              left: 40.w,
              child: const Text('Splash Screen'),
            )
          ],
        ),
      ),
    );
  }
}
