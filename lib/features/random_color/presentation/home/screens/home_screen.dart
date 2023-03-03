import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solidtask/utils/cubit/random_color_generator_cubit.dart';
import 'package:solidtask/utils/resources/constants_manager.dart';
import '../../../../../utils/app_size/screen_size_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){return Future.value(false);},
      child: Scaffold(
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
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
                child:  Text(ConstantsManger.homeScreenCenterTxt,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: AppScreenSize.responsiveTextValue(context, ConstantsManger.homeScreenTxtSize),
                      color: Colors.black
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
