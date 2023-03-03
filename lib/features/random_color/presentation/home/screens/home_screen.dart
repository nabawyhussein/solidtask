import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solidtask/features/random_color/utils/cubit/random_color_generator_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          RandomColorGeneratorCubit.get(context).generateRandomColorColor();
        },
        child:
            BlocBuilder<RandomColorGeneratorCubit, RandomColorGeneratorState>(
          builder: (context, state) {
            return Container(
              height: double.infinity,
              width: double.infinity,
              color: state is NewColorGenerated ? state.newColor : Colors.white,
              alignment: Alignment.center,
              child: const Text("Hello Yana Mandziuk ^_^"),
            );
          },
        ),
      ),
    );
  }
}
