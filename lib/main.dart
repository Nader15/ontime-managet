import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:zari_on_time/Utils/app_colors.dart';
import 'Routes/routes.dart';
import 'Utils/Translation/translation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZARI ON-TIME VENDOR',
      translations: Translation(),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar'),
        Locale('en'), // English
      ],
      // locale: Locale(AuthController().appLocal.value),
      fallbackLocale: const Locale("ar"),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          foregroundColor: AppColors.BLACK_COLOR,
        ),
        fontFamily: "naskh_font",
      ),
      initialRoute: AppRoutes.splashScreen,
      getPages: AppRoutes.routes,
    );
  }
}
