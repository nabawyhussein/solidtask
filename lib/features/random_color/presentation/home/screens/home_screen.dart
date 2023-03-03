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
        child: BlocBuilder<RandomColorGeneratorCubit, RandomColorGeneratorState>(
          builder: (context, state) {
            if(state is NewColorGenerated) {
              return Container(
              height: ,
              width: 200,
              color: state.newColor,
            );
            }
            else{
              return Container(
                height: 500,
                width: 250,
                color: Colors.red,
              );
            }
          },
        ),
      ),
    );
  }
}
