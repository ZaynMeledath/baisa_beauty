part of '../home_screen.dart';

Widget mainImageSegment() {
  return Column(
    children: [
      Image.asset(
        'assets/images/shop_interior_image.jpeg',
        fit: BoxFit.cover,
        width: double.maxFinite,
        height: 450.h(),
      ),
      SizedBox(height: 20.h()),
      Text(
        '✨ “Brilliance you wear, beauty you embrace.\nAdorn yourself with jewels that shine and cosmetics that define.” ✨',
        textAlign: TextAlign.center,
        style: GoogleFonts.sansita(
          fontSize: 24.w(),
        ),
      ),
    ],
  );
}
