import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../data/locale/lang_pref.dart';
import '../data/locale/user_pref.dart';
import 'dio_client.dart';
import 'endpoints.dart';

final dioProvider = Provider<Dio>(
  (ref) {
    final dio = Dio(
      BaseOptions(
        baseUrl: Endpoints.baseUrl,
        validateStatus: (_) => true,
        followRedirects: true,
        headers: {
          'accept': 'application/json',
        },
      ),
    );
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
      ),
    );
    return dio;
  },
);

final dioClientProvider = Provider<DioClient>(
  (ref) => DioClient(
    dio: ref.read(dioProvider),
    langPrefs: ref.watch(langPrefsProvider),
    userPrefs: ref.watch(userPrefsProvider),
  ),
);
