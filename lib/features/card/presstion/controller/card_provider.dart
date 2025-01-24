import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/config/utils/custom_state.dart';

final cardProviderScreen = Provider<CardProviderLogic>(
      (ref) => CardProviderLogic(ref: ref),
);

class CardProviderLogic extends _card_providerStates {
  CardProviderLogic({required super.ref});

  Future<void> getData() async {
    isLoading.state = true;
    await Future.delayed(const Duration(seconds: 2));
    isLoading.state = false;
  }

  Future<void> addNumberOfCount() async {
    try {
      isLoading.state = true;
      count.state++;
    } catch (e, s) {
      isError.state = e.toString();
      log(isError.state, stackTrace: s);
    } finally {
      isLoading.state = false;
    }
  }

  Future<void> minusNumberOfCount() async {
    try {
      isLoading.state = true;
      if (count.state > 0) {
        count.state--;
      }

    } catch (e, s) {
      isError.state = e.toString();
      log(isError.state, stackTrace: s);
    } finally {
      isLoading.state = false;
    }
  }


}

class _card_providerStates {
  final ProviderRef ref;
  final CustomState<bool> isLoading;
  final CustomState<String> isError;
  final CustomState<int> count;

  _card_providerStates({required this.ref})
      : isLoading = CustomState<bool>(ref, false),
        isError = CustomState<String>(ref, ''),
        count = CustomState<int>(ref, 0)
  ;
}