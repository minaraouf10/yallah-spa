import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/model/home_screen_model.dart';
import '../../../data/service/home_service.dart';

final productsFutureProvider = FutureProvider<List<ProductData>>((ref) async {
  final homeService = ref.read(homeServiceProvider);
  final products = await homeService.getAllProducts();
  log(products.toString(), name: 'service Provider');
  log(products[0].id.toString(), name: 'service id Provider');
  return products;
});
