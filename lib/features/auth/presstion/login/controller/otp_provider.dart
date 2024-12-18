import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yal_spa/features/auth/presstion/login/controller/login_provider_screen.dart';

import '../../../../../core/config/utils/custom_state.dart';
import '../../../data/service/auth_service.dart';

final otpProviderScreen = Provider<OTPLogic>(
  (ref) => OTPLogic(
    ref: ref,
    authService: ref.read(authServiceProvider),
    loginLogic: ref.read(loginProviderScreen),
  ),
);

class OTPLogic extends _OTPStates {
  OTPLogic(
      {required super.ref,
      required this.authService,
      required this.loginLogic});

  final AuthService authService;

  final LoginLogic loginLogic;

  final TextEditingController otpController = TextEditingController();

  Future<void> checkOTP() async {
    try {
      isLoading.state = true;

      final data = await authService.otp(
        loginLogic.phoneController.text.trim(),
        otpController.text.trim(),
      );

      if (data?.user != null) {
        isSuccess.state = true;
        log('User logged in successfully: ${data?.user.name}', name: 'otpController');
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

class _OTPStates {
  final ProviderRef ref;
  final CustomState<bool> isLoading;
  final CustomState<String> isError;
  final CustomState<bool> isSuccess;

  _OTPStates({required this.ref}) :
        isLoading = CustomState<bool>(ref, false),
        isError = CustomState<String>(ref, ''),
        isSuccess = CustomState<bool>(ref, false);
}
