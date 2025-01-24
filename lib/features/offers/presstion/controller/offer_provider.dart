// import 'dart:developer';
//
// import 'package:flutter_riverpod/flutter_riverpod.dart';
//
// import '../../../../core/config/utils/custom_state.dart';
// import '../../data/service/offers_service.dart';
//
// final offerProviderScreen = Provider<OfferLogic>(
//   (ref) => OfferLogic(ref: ref, offerService: ref.read(offersServiceProvider)),
// );
//
// class OfferLogic extends _OfferStates {
//   OfferLogic({
//     required super.ref,
//     required this.offerService,
//   });
//
//   final OfferService offerService;
//
//   Future<void> getOffers() async {
//     try {
//       isLoading.state = true;
//       await offerService.getOfferData();
//       isLoading.state = false;
//     } catch (e, s) {
//       isError.state = e.toString();
//       log(isError.state, stackTrace: s, name: 'get Offers Data');
//     } finally {
//       isLoading.state = false;
//     }
//   }
// }
//
// class _OfferStates {
//   final ProviderRef ref;
//   final CustomState<bool> isLoading;
//   final CustomState<String> isError;
//
//   _OfferStates({required this.ref})
//       : isLoading = CustomState<bool>(ref, false),
//         isError = CustomState<String>(ref, '');
// }
