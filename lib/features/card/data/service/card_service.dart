import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yal_spa/core/api_helper/endpoints.dart';
import 'package:yal_spa/features/offers/data/model/offer_model.dart';
import '../../../../core/api_helper/custom_response.dart';
import '../../../../core/api_helper/dio_client.dart';
import '../../../../core/api_helper/dio_providers.dart';

final cardServiceProvider = Provider<CardService>((ref) =>
    CardService(ref.read(dioClientProvider),),);

class CardService {
  final DioClient client;

  CardService(this.client);

//   Future<List<OfferModel>>getCardDataServices  async {
//     final res = CustomResponse(await client.get(Endpoints.))
// }
}