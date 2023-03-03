part of 'random_color_generator_cubit.dart';

@immutable
abstract class RandomColorGeneratorState {}

class RandomColorGeneratorInitial extends RandomColorGeneratorState {}
class NewColorGenerated extends RandomColorGeneratorState {
  final Color newColor;

  NewColorGenerated({required this.newColor});
}
