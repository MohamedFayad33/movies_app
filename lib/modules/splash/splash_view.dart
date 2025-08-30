import 'package:flutter/material.dart';
import 'package:movies_app/core/constant/assets/assets.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  double height = 30;
  double width = 30;

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    await Future.delayed(Duration(milliseconds: 2000));
    startAnimation();
  }

  void startAnimation() {
    height = 120;
    width = 120;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 3),
          height: height,
          width: width,
          curve: Curves.ease,
          child: Image.asset(Assets.iconMovies, fit: BoxFit.fill),
        ),
      ),
    );
  }
}
