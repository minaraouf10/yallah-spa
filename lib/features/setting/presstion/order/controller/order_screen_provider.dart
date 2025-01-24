import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/config/utils/custom_state.dart';

final orderProviderScreen = Provider<OrderScreenLogic>(
      (ref) => OrderScreenLogic(ref: ref),
);

class OrderScreenLogic extends _OrderScreenStates {
  OrderScreenLogic({required super.ref});

  Future<void> getData() async {
    isLoading.state = true;
    await Future.delayed(const Duration(seconds: 2));
    isLoading.state = false;
  }

  void getCurrentOrder()  {
    isLoading.state = true;

  }
}

class _OrderScreenStates {
  final ProviderRef ref;
  final CustomState<bool> isLoading;

  _OrderScreenStates({required this.ref})
      : isLoading = CustomState<bool>(ref, false);
}