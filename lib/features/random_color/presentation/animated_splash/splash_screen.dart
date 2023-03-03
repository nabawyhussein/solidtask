import 'dart:async';
import 'package:flutter/material.dart';
import 'package:solidtask/features/random_color/presentation/animated_splash/widgets/logo_widget.dart';

import '../../../../utils/resources/constants_manager.dart';
import '../home/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  Timer? _timer;
  late AnimationController _animationController;
  late Animation<double> _animation;

  _startDelay() async {
    _timer =
        Timer(const Duration(seconds: ConstantsManger.splashDelay), _goNextScreen);
  }

  _goNextScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()),);
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: ConstantsManger.splashAnimationDelay),
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
    _animationController.addListener(() {
      if (_animationController.isCompleted) {
        _startDelay();
      }
    });
    _animationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _timer!.cancel();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _filterSplashImage(),
    );
  }

  _filterSplashImage() {
    return Container(
      alignment: Alignment.center,
      child: AnimatedBuilder(
        animation: _animation,
        child: const BuildLogoWidget(),
        builder: (_, child) {
          return Opacity(
            opacity: _animation.value,
            child: Transform.translate(
              offset: Offset(0, (1 - _animation.value) * -150),
              child: child,
            ),
          );
        },
      ),
    );
  }
}
