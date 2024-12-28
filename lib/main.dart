import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Import Riverpod
import 'package:yal_spa/core/config/router/router.dart';
import 'package:yal_spa/core/config/themes/app_theme.dart';
import 'package:yal_spa/generated/translations.g.dart';

import 'core/data/locale/pref.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefs.init();
  runApp(
    ProviderScope(
      child: TranslationProvider(
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter.config(),
      theme: ThemeData(
        fontFamily: 'Almarai',
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: AppTheme.scaffoldBackground,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppTheme.scaffoldBackground
      )
      ),
      locale: const Locale('ar', 'AE'),
      supportedLocales: const [
        Locale('ar', 'AE'),
        Locale('en', 'US'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        // إضافة الترجمة للـ Material
        GlobalWidgetsLocalizations.delegate,
        // إضافة الترجمة للعناصر الأخرى
        GlobalCupertinoLocalizations.delegate,
        // إضافة الترجمة للـ Cupertino (إذا كنت بحاجة لها)
      ],
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
    );
  }
}
