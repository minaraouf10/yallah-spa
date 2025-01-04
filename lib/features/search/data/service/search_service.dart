// import 'dart:developer';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import '../../../../core/api_helper/custom_response.dart';
// import '../../../../core/api_helper/dio_client.dart';
// import '../../../../core/api_helper/dio_providers.dart';
// import '../../../../core/api_helper/endpoints.dart';
// import '../../../../core/config/utils/custom_state.dart';
// import '../../../home/data/model/home_screen_model.dart';
//
// final searchServiceProvider = Provider<SearchService>(
//   (ref) => SearchService(
//     ref.read(dioClientProvider),
//   ),
// );
//
// class SearchService {
//   final DioClient client;
//
//   SearchService(this.client);
//
//   Future<List<ProductData>> searchData(text) async {
//     final body = {'text': text};
//     final res = CustomResponse(
//       await client.post(
//         Endpoints.search,
//         body: body,
//       ),
//     );
//     if (res.isError) throw res.message;
//     final data = (res.data as Json)['data'] as List<dynamic>;
//     final searchModel =
//         data.map((e) => ProductData.fromJson(e as Json)).toList();
//     //ProductModel.fromJson(data);
//     log(searchModel.toString());
//     return searchModel;
//   }
// }
