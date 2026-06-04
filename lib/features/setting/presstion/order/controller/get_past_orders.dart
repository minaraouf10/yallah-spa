import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yal_spa/features/setting/data/model/order_model.dart';

import '../../../data/service/setting_service.dart';

final getPastOrder = FutureProvider<List<OrderModel>>((ref) async {
  final orderService = ref.read(settingServiceProvider);
  final orders = await orderService.getOrders('past');
  return orders;
});