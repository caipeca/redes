/*
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


import 'localization/app_localizations.dart';
import 'models/lesson.dart';
import 'screens/login_screen.dart';
import 'screens/modules_screen.dart';
import 'screens/lesson_screen.dart';
import 'services/progress_service.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();


// NOTE: Firebase is prepared in pubspec but not initialized by default.
// To enable Firebase later, add google-services files and call Firebase.initializeApp().


  final prefs = await SharedPreferences.getInstance();
  runApp(NetMasterApp(prefs: prefs));
}


class NetMasterApp extends StatelessWidget {
  final SharedPreferences prefs;
  NetMasterApp({required this.prefs});


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProgressService(prefs)),
      ],
      child: MaterialApp(
        title: 'NetMaster',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        onGenerateTitle: (context) => AppLocalizations.of(context)!.translate('app_title'),
        theme: ThemeData(primarySwatch: Colors.indigo),
        initialRoute: LoginScreen.routeName,
        routes: {
          LoginScreen.routeName: (_) => LoginScreen(),
          ModulesScreen.routeName: (_) => ModulesScreen(),
          LessonScreen.routeName: (_) => LessonScreen(),
        },
      ),
    );
  }
}
 */

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:jogo/src/screens/splash_screen.dart';

void main() {
  runApp(const AprendeRedesApp());
}

class AprendeRedesApp extends StatelessWidget {
  const AprendeRedesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aprende Redes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: const SplashScreen(),
    );
  }
}