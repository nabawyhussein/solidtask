import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solidtask/features/random_color/utils/cubit/random_color_generator_cubit.dart';

import '../../../utils/app_size/screen_size_controller.dart';

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
              child:  Text("Hello Yana Mandziuk ^_^",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: AppScreenSize.responsiveTextValue(context, 70),
                    color: Colors.black
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
