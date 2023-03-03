import 'package:flutter/material.dart';
import 'package:solidtask/utils/resources/constants_manager.dart';
import '../features/random_color/presentation/animated_splash/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../utils/cubit/random_color_generator_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RandomColorGeneratorCubit(),
      child: const MaterialApp(
        title: ConstantsManger.appTitle,
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
