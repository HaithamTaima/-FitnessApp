import 'package:final_gym/pref/shared_pref_controller.dart';
import 'package:final_gym/providers/language_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app-localization.dart';
import 'package:provider/provider.dart';

import 'Screens/SplashScreen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefController().initSharedPref();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider <LanguageProvider>(
      create: (context)=> LanguageProvider(),
      child: MyMaterialApp(),
    );
  }
}
class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar'),
        Locale('en'),
      ],
      locale: Locale(Provider.of<LanguageProvider>(context).language),
      home: SplashScreen(),
    );
  }
}

