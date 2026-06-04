import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yal_spa/features/home/data/model/home_screen_model.dart';

import '../../../../core/api_helper/custom_response.dart';
import '../../../../core/api_helper/dio_client.dart';
import '../../../../core/api_helper/dio_providers.dart';
import '../../../../core/api_helper/endpoints.dart';
import '../../../../core/config/utils/custom_state.dart';
import '../../../../core/data/locale/user_pref.dart';

final homeServiceProvider = Provider<HomeService>(
  (ref) => HomeService(ref.read(dioClientProvider),
      prefs: ref.read(userPrefsProvider)),
);

class HomeService {
  final DioClient client;

  final UserPrefs prefs;

  HomeService(this.client, {required this.prefs});

  Future<List<HomeModel>> getServicesData() async {
    final res = CustomResponse(await client.get(Endpoints.services));

    if (res.isError) throw res.message;

    if (res.data is List) {
      final List data = res.data as List;
      final homeModels =
          data.map((e) => HomeModel.fromJson(e as Json)).toList();
      return homeModels;
    }
    else if (res.data is Json) {
      final data = res.data as Map<String, dynamic>;
      final homeModel = HomeModel.fromJson(data);
      return [homeModel]; // نضع كائن HomeModel في قائمة
    }
    else {
      throw 'Invalid response: Unexpected data format';
    }
  }

  Future<List<ProductData>> getAllProducts () async{
    final res = CustomResponse(await client.get(Endpoints.getAllProducts));

    if(res.isError) throw res.message;

    if(res.data is List){
      final List data = res.data as List;
      final productModel = data.map((e)=> ProductData.fromJson(e as Json)).toList();
      log(productModel.toString(), name: 'product Provider List');
      return productModel;
    }
    else if(res.data is Json){
      final data = res.data as Json;
      final productModel = ProductData.fromJson(data);
      log(productModel.toString(), name: 'product Provider map');
      return [productModel];
    }
    else{
      throw 'Invalid response: Unexpected data format';
    }
  }
}
