import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yal_spa/core/api_helper/endpoints.dart';
import 'package:yal_spa/features/card/data/model/card_model.dart';
import 'package:yal_spa/features/offers/data/model/offer_model.dart';
import '../../../../core/api_helper/custom_response.dart';
import '../../../../core/api_helper/dio_client.dart';
import '../../../../core/api_helper/dio_providers.dart';
import '../../../../core/config/utils/custom_state.dart';

final cardServiceProvider = Provider<CardService>((ref) =>
    CardService(client: ref.read(dioClientProvider),),);

class CardService {
  final DioClient client;

  CardService({required this.client});

  Future<CardModel> getCardDataServices () async {
    final res = CustomResponse(await client.get(Endpoints.getAllCard));
    if(res.isError) throw res.message;
    if(res.data is Json){
      final data = res.data as Json;
      final cardModel = CardModel.fromJson(data);
      return cardModel;
    }
    else {
      throw 'Invalid response: Unexpected data format';
    }
}
}