import 'dart:ui';

import 'package:baisa_beauty/main.dart';
import 'package:baisa_beauty/utils/screen_size.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

part 'segments/collection_segment.dart';
part 'segments/footer_segment.dart';
part 'segments/main_image_segment.dart';
part 'segments/services_segment.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void didChangeMetrics() {
    // getInitialScreenSize(context: context);
    setState(() {});
    super.didChangeMetrics();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = themeNotifier.value == ThemeMode.dark;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 100.h(),
        forceMaterialTransparency: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 7,
              sigmaY: 7,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w()),
              decoration: BoxDecoration(
                color: isDark
                    ? Colors.black.withAlpha(40)
                    : Colors.white.withAlpha(40), // semi-transparent
                border: Border.all(
                  color: isDark
                      ? Colors.black.withAlpha(30)
                      : Colors.white.withAlpha(30),
                  width: 1,
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h()),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.w()),
                      child: Image.asset(
                        'assets/images/logo.jpg',
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w()),
                  Text(
                    'Baisa Beauty Selection',
                    style: GoogleFonts.sansita(
                      fontSize: 30.w(),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w()),
            child: IconButton(
              onPressed: () {
                setState(() {
                  if (isDark) {
                    themeNotifier.value = ThemeMode.light;
                  } else {
                    themeNotifier.value = ThemeMode.dark;
                  }
                });
              },
              icon: Icon(
                Icons.dark_mode,
                size: 30.w(),
                color: isDark ? Colors.yellow : Colors.grey,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: ListView(
          children: [
            // SizedBox(height: 6.h()),
            mainImageSegment(),
            _divider(),
            collectionSegment(),
            _divider(),
            servicesSegment(),
            _divider(),
            footerSegment(),
          ],
        ),
      ),
    );
  }

  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 24.w()),
      height: 1,
      color: Colors.blueGrey.withAlpha(100),
    );
  }
}
