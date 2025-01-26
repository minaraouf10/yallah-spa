import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yal_spa/features/search/data/model/search_model.dart';

import '../../../../core/api_helper/custom_response.dart';
import '../../../../core/api_helper/dio_client.dart';
import '../../../../core/api_helper/dio_providers.dart';
import '../../../../core/api_helper/endpoints.dart';
import '../../../../core/config/utils/custom_state.dart';

final searchServiceProvider = Provider<SearchService>(
  (ref) => SearchService(
    ref.read(dioClientProvider),
  ),
);

class SearchService {
  final DioClient client;

  SearchService(this.client);

  Future<List<SearchModel>> searchData(text) async {
    final body = {'search': text};
    final res = CustomResponse(
      await client.get(Endpoints.getAllProducts, query: body),
    );
    if (res.isError) throw res.message;
    if (res.data is List) {
      final data = (res.data) as List;
      final searchModel = data.map((e) => SearchModel.fromJson(e)).toList();
      return searchModel;
    }
    if (res.data is Json) {
      final data = (res.data) as Json;
      final searchModel = SearchModel.fromJson(data);
      return [searchModel];
    } else {
      throw 'Invalid response: Unexpected data format';
    }
  }
}
