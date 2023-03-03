import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'dart:math';
import 'dart:ui';
part 'random_color_generator_state.dart';

class RandomColorGeneratorCubit extends Cubit<RandomColorGeneratorState> {
  RandomColorGeneratorCubit() : super(RandomColorGeneratorInitial());
  static RandomColorGeneratorCubit get(context) => BlocProvider.of(context);
  void generateRandomColorColor() {
    emit(NewColorGenerated(newColor: Color(Random().nextInt(0xffffffff))));
  }
}
