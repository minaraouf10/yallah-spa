import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yal_spa/core/api_helper/endpoints.dart';
import 'package:yal_spa/core/config/utils/custom_state.dart';

import '../../../../core/api_helper/custom_response.dart';
import '../../../../core/api_helper/dio_client.dart';
import '../../../../core/api_helper/dio_providers.dart';
import '../model/offer_model.dart';

final offersServiceProvider = Provider<OfferService>(
  (ref) => OfferService(
    ref.read(dioClientProvider),
  ),
);

class OfferService {
  final DioClient client;

  OfferService(this.client);

  Future<List<OfferModel>> getOfferData() async {
    final res = CustomResponse(await client.get(Endpoints.getAllOffers));

    if (res.isError) throw res.message;

    if (res.data is List) {
      final List data = res.data as List;
      final offerModel =
          data.map((e) => OfferModel.fromJson(e as Json)).toList();
      return offerModel;
    } else if (res.data is Json) {
      final data = res.data as Json;
      final offerModel = OfferModel.fromJson(data);
      return [offerModel];
    } else {
      throw 'Invalid response: Unexpected data format';
    }
  }
}
