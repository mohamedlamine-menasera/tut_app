import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tut_app/presentation/resources/assets_manager.dart';
import 'package:tut_app/presentation/resources/colors_manager.dart';
import 'package:tut_app/presentation/resources/constants_manager.dart';

import '../resources/routes_manager.dart';
class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  // Timer for splash screen
  Timer? _timer;

  _startDelay(){
    _timer = Timer(const Duration(seconds : AppConstants.splashDelay), _goNext);
  }
  _goNext(){
    Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startDelay();
  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
          backgroundColor: AppColor.primary,
      body:
      Center(child: Image(image: AssetImage(ImageAssets.splashLogo))),
    );
  }

  // Called when this object is removed from the tree permanently.
  @override
  void dispose() {
    // TODO: implement dispose
    _timer?.cancel();
    super.dispose();
  }
}
