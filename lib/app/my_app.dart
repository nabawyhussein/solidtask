import 'package:flutter/material.dart';
import '../features/random_color/presentation/home/screens/home_screen.dart';
import '../features/random_color/utils/cubit/random_color_generator_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RandomColorGeneratorCubit(),
      child: MaterialApp(
        title: 'Solid Task',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}