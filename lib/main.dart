import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:inpo_last/localization/locales.dart';
import 'package:inpo_last/notification_controller.dart';
import 'package:inpo_last/pages/Bleeding.dart';
import 'package:inpo_last/pages/Conditions.dart';
import 'package:inpo_last/pages/Crime.dart';
import 'package:inpo_last/pages/Disaster.dart';
import 'package:inpo_last/pages/Fire.dart';
import 'package:inpo_last/pages/Fruits.dart';
import 'package:inpo_last/pages/Nosebleed.dart';
import 'package:inpo_last/pages/Numbers.dart';
import 'package:inpo_last/pages/Robbery.dart';
import 'package:inpo_last/pages/apple.dart';
import 'package:inpo_last/pages/awareness.dart';
import 'package:inpo_last/pages/coming_soon.dart';
import 'package:inpo_last/pages/diets.dart';
import 'package:inpo_last/pages/heart_attack.dart';
import 'package:inpo_last/pages/home_page.dart';
import 'package:inpo_last/pages/hospital.dart';
import 'package:inpo_last/pages/video_bleeding.dart';
import 'package:inpo_last/pages/video_player_page.dart';
import 'package:inpo_last/pages/workout.dart';
import 'package:inpo_last/theme/dark_theme.dart';
import 'package:inpo_last/theme/light_theme.dart';
import 'package:inpo_last/theme/new theme/main_th.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  (savedThemeMode: savedThemeMode);
  await AwesomeNotifications().initialize(null, [
    NotificationChannel(
        channelGroupKey: "basic_channel_group",
        channelKey: "basic_channel",
        channelName: "Basic Notification",
        channelDescription: "Basic notification channel")
  ], channelGroups: [
    NotificationChannelGroup(
        channelGroupKey: "basic_channel_group", channelGroupName: 'Basic Group')
  ]);
  bool isAllowedToSendNotification =
      await AwesomeNotifications().isNotificationAllowed();
  if (!isAllowedToSendNotification) {
    AwesomeNotifications().requestPermissionToSendNotifications();
  }

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    AwesomeNotifications().setListeners(
        onActionReceivedMethod: NotificationController.onActionReceivedMethod,
        onNotificationCreatedMethod:
            NotificationController.onNotificationCreatedMethod,
        onNotificationDisplayedMethod:
            NotificationController.onNotificationDisplayedMethod,
        onDismissActionReceivedMethod:
            NotificationController.onDismissActionReceivedMethod);
    configureLocalization(); // Call configureLocalization here
    super.initState();
  }

  final FlutterLocalization localization = FlutterLocalization.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: localization.supportedLocales,
      localizationsDelegates: localization.localizationsDelegates,
      home: HomePage(),
      theme: lightTheme,
      darkTheme: darkTheme,
      // theme: Provider.of<ThemeProvider>(context).themeData,
      routes: {
        '/Bleeding': (context) => Bleeding(),
        '/Nosebleed': (context) => Nosebleed(),
        '/Emergency': (context) => Emergency(),
        '/Conditions': (context) => Conditions(),
        '/Disaster': (context) => Disaster(),
        '/Fire': (context) => Fire(),
        '/HeartAttack': (context) => HeartAttack(),
        '/Fruits': (context) => Fruits(),
        '/Hospitals': (context) => Hospitals(),
        '/Apple': (context) => Apple(),
        '/Coming': (context) => ComingSoon(),
        '/Crime': (context) => Crime(),
        '/Robbery': (context) => Robbery(),
        '/Workout': (context) => Workout(),
        '/Awareness': (context) => Awareness(),
        '/Video': (context) => Video(),
        '/Diets': (context) => Diets(),
        '/Theme': (context) => ThemeCh(),
        '/VideoBleeding': (context) => VideoBleeding(),
      },
    );
  }

  void configureLocalization() {
    localization.init(mapLocales: LOCALES, initLanguageCode: "en");
    localization.onTranslatedLanguage = onTranslatedLanguage;
  }

  void onTranslatedLanguage(Locale? locale) {
    setState(() {});
  }
}
