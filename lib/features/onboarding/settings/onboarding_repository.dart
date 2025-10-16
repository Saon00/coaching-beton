abstract class OnboardingRepository{
  Future<bool> isOnboardingComplete();
}

class OnboardingRepositoryImpl implements OnboardingRepository{

  static const _keyOnboardingComplete = 'isOnboardingComplete';

  @override
  Future<bool> isOnboardingComplete() async{
    // final prefs = await
    throw UnimplementedError();
  }
}