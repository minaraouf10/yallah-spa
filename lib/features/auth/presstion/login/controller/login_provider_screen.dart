import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


import '../../../../../core/config/utils/custom_state.dart';
import '../../../../../generated/translations.g.dart';
import '../../../data/service/auth_service.dart';

final loginProviderScreen = Provider<LoginLogic>(
  (ref) => LoginLogic(ref: ref, authService: ref.read(authServiceProvider)),
);

class LoginLogic extends _LoginStates {
  LoginLogic({required this.authService, required super.ref});

  final AuthService authService;

  final TextEditingController phoneController = TextEditingController();

  // Future<void> userLogin() async {
  //   try {
  //     isLoading.state = true;
  //
  //     await authService.login(
  //       phoneController.text.trim(),
  //     );
  //     isSuccess.state = true;
  //   } catch (e, s) {
  //     isError.state = e.toString();
  //     log(isError.state, stackTrace: s);
  //   } finally {
  //     isLoading.state = false;
  //   }
  // }

  Future<void> userLogin() async {
    try {
      isLoading.state = true;

      final user = await authService.login(
        phoneController.text.trim(),
      );

      if (user != null) {
        isSuccess.state = true;
        log('User logged in successfully: ${user.name}');
      } else {
        isSuccess.state = true;
        isError.state = 'No user data received.';
        log(isError.state);
      }
    } catch (e, s) {
      isError.state = e.toString();
      log(isError.state, stackTrace: s);
    } finally {
      isLoading.state = false;
    }
  }


}

class _LoginStates {
  final ProviderRef ref;
  final CustomState<bool> isLoading;
  final CustomState<String> isError;
  final CustomState<bool> isSuccess;

  _LoginStates({required this.ref})
      : isLoading = CustomState<bool>(ref, false),
        isError = CustomState<String>(ref, ''),
        isSuccess = CustomState<bool>(ref, false);
}
