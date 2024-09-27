import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/counter_screen/state/counter_screen_state.dart';

final counterScreenStateNotifierProvider =
    StateNotifierProvider.autoDispose((ref) => CounterScreenStateNotifier());

class CounterScreenStateNotifier extends StateNotifier<CounterScreenState> {
  CounterScreenStateNotifier()
      : super(CounterScreenState(count: 10, isLoading: false));

  onIncrement() async {
    state =
        state.copyWith(isLoading: true); // for setting loading state to true
    await Future.delayed(Duration(seconds: 2)); // for delay

    state = state.copyWith(
        count: ++state.count,
        isLoading:
            false); // for setting loading state to false and increment counter
  }

  onDecrement() {}
}
