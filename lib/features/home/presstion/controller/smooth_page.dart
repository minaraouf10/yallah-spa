import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/config/utils/custom_state.dart';

final smoothPageProviderScreen = Provider<SmoothPageLogic>(
  (ref) => SmoothPageLogic(ref: ref),
);

class SmoothPageLogic extends _SmoothPageStates {
  SmoothPageLogic({required super.ref});

  smoothPageChange(int index) {
    currentIndex.state = index;
  }
}

class _SmoothPageStates {
  final ProviderRef ref;
  final CustomState<int> currentIndex;

  _SmoothPageStates({required this.ref})
      : currentIndex = CustomState<int>(ref, 0);
}
