import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:formadziri/splash_screen.dart';
import 'package:formadziri/text_fonts.dart';
import 'package:get/get.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.transparent));
}

Color brandColor = const Color(0XFFCFE6CD);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
        builder: (ColorScheme? lightDynacmic, ColorScheme? dark) {
      ColorScheme lightColorScheme;
      // ignore: unused_local_variable
      ColorScheme darkColorScheme;
      lightColorScheme = ColorScheme.fromSeed(seedColor: brandColor);
      darkColorScheme = ColorScheme.fromSeed(
          seedColor: brandColor, brightness: Brightness.dark);

      return GetMaterialApp(
        locale: const Locale("en"),
        supportedLocales: const [Locale("en"), Locale("fr"), Locale("ar")],
        localizationsDelegates: const [
          // AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          navigationBarTheme: const NavigationBarThemeData(
            backgroundColor: Color.fromRGBO(207, 229, 205, 1),
            indicatorColor: Color(0xFF9BBB99),
          ),
          colorScheme: lightColorScheme,
          textTheme: myTextTheme,
          useMaterial3: true,
        ),
        home: const SplashScreen(),
      );
    });
  }
}
// SDNJS
 