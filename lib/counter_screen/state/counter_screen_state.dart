class CounterScreenState {
  int count;
  bool? isLoading;
  CounterScreenState({required this.count, this.isLoading});

  CounterScreenState copyWith({
    int? count,
    bool? isLoading,
  }) {
    return CounterScreenState(
      count: count ?? this.count,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
