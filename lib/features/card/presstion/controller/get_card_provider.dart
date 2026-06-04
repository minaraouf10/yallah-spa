import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/model/card_model.dart';
import '../../data/service/card_service.dart';

final cardDataProvider = FutureProvider<CardModel>(
      (ref) async {
    final cardService = ref.read(cardServiceProvider);
    final card = await cardService.getCardDataServices();
    return card;
  },
);