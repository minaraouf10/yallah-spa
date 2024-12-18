import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yal_spa/features/home/data/model/home_screen_model.dart';
import '../../data/service/home_service.dart';

final serviceProvider = FutureProvider<List<HomeModel>>((ref) async {
  final homeService = ref.read(homeServiceProvider);
  final services = await homeService.getServicesData();
  log(services.toString(), name: 'service Provider');
  return services;
});
