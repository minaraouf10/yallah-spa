import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yal_spa/features/home/data/model/home_screen_model.dart';

import '../../../../../core/config/utils/custom_state.dart';
import '../../../data/service/home_service.dart';

final productProviderScreen = Provider<ProductProviderLogic>(
  (ref) => ProductProviderLogic(
    ref: ref,
    homeService: ref.read(homeServiceProvider),
  ),
);

class ProductProviderLogic extends _ProductScreenProviderStates {
  ProductProviderLogic({required super.ref, required this.homeService});

  final HomeService homeService;

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

  // Future<List<ProductData>> getProducts() async {
  //   isLoading.state = true;
  //   final products = await homeService.getAllProducts();
  //   log(products.toString(), name: 'product Provider');
  //   isLoading.state = false;
  //   return products;
  // }
}

class _ProductScreenProviderStates {
  final ProviderRef ref;
  final CustomState<bool> isLoading;
  final CustomState<String> isError;
  final CustomState<int> count;

  _ProductScreenProviderStates({required this.ref})
      : isLoading = CustomState<bool>(ref, false),
        isError = CustomState<String>(ref, ''),
        count = CustomState<int>(ref, 1);
}
