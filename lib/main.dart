import 'package:baisa_beauty/screens/home_screen/home_screen.dart';
import 'package:baisa_beauty/utils/screen_size.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    getInitialScreenSize(context: context);
    return ValueListenableBuilder(
        valueListenable: themeNotifier,
        builder: (context, theme, child) {
          return MaterialApp(
            title: 'Baisa Beauty',
            debugShowCheckedModeBanner: false,
            theme: ThemeData.light(useMaterial3: true),
            darkTheme: ThemeData.dark(useMaterial3: true),
            themeMode: theme,
            home: const HomeScreen(),
          );
        });
  }
}
