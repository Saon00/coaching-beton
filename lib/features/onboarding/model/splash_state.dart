class SplashState {
  final int progress;
  final bool isLoading;

  SplashState({this.progress = 0, this.isLoading = false});

  SplashState copyWith({int? progress, bool? isLoading}) {
    return SplashState(
      progress: progress ?? this.progress,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
