import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/adapters.dart';

Box gameBox = Hive.box('resources');
int highScore = gameBox.get('high-score');
int hints = gameBox.get('hints');

class LevelNotifier extends StateNotifier<int> {
  LevelNotifier() : super(1);

  void increment() {
    state += 1;
    if (state > highScore) {
      gameBox.put('high-score', state);
    }
  }

  void reset() {
    state = 1;
  }
}

final levelProvider = StateNotifierProvider<LevelNotifier, int>((ref) {
  return LevelNotifier();
});

class StageNotifier extends StateNotifier<int> {
  StageNotifier() : super(0);

  void increment() {
    state += 1;
  }

  void reset() {
    state = 0;
  }
}

final stageProvider = StateNotifierProvider<StageNotifier, int>((ref) {
  return StageNotifier();
});

class HintsNotifier extends StateNotifier<int> {
  HintsNotifier() : super(hints);

  void increment() {
    state += 1;
    gameBox.put('hints', state);
  }

  void decrement() {
    state -= 1;
    gameBox.put('hints', state);
  }
}

final hintsProvider = StateNotifierProvider<HintsNotifier, int>((ref) {
  return HintsNotifier();
});
