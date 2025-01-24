import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/model/offer_model.dart';
import '../../data/service/offers_service.dart';

final OfferProvider = FutureProvider.autoDispose<List<OfferModel>>(
      (ref) async {
    final offerService = ref.read(offersServiceProvider);
    final offer = await offerService.getOfferData();
    log(offer.toString(), name: 'getOfferData');
    return offer;
  },
);