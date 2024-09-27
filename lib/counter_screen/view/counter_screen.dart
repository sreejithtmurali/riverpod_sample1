import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/counter_screen/controller/counter_screen_controller.dart';
import 'package:riverpod_sample/counter_screen/state/counter_screen_state.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(counterScreenStateNotifierProvider)
        as CounterScreenState; // for ceretinga  state object
    return Scaffold(
      floatingActionButton: provider.isLoading!
          ? CircularProgressIndicator()
          : FloatingActionButton(
              onPressed: () {
                ref
                    .read(counterScreenStateNotifierProvider.notifier)
                    .onIncrement(); // for accessing a funciton inside notifier
              },
              child: Icon(Icons.add),
            ),
      body: Center(
        child: Text(provider.count.toString()),
      ),
    );
  }
}
