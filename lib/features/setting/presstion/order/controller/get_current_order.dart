import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/model/order_model.dart';
import '../../../data/service/setting_service.dart';

final getCurrentOrder = FutureProvider<List<OrderModel>>((ref) async {
  final orderService = ref.read(settingServiceProvider);
  final orders = await orderService.getOrders('current');
  return orders;
});