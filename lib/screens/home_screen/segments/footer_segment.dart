part of '../home_screen.dart';

Widget footerSegment() {
  const instagramUrl =
      'https://www.instagram.com/baisa_beauty_selection?utm_source=qr&igsh=MTVhN2xwc3VpYmo1YQ==';
  return Container(
    width: double.maxFinite,
    color: const Color.fromARGB(255, 20, 20, 20),
    padding: EdgeInsets.symmetric(
      horizontal: 24.w(),
      vertical: 24.h(),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _titleText('Contact Us'),
                SizedBox(height: 4.h()),
                _contentText(
                    'Baisa Beauty Selection,\nNear Jain Sthanak Dhanmandi Road Pali,\nRajasthan 306401.'),
                SizedBox(height: 4.h()),
                _contentText(
                    'Arjun Singh: +91 8003547679\nPabu Singh: +91 9660461448'),
              ],
            ),
            Column(
              children: [
                _titleText('Follow Us'),
                SizedBox(height: 4.h()),
                InkWell(
                  onTap: () => launchUrl(Uri.parse(instagramUrl)),
                  child: Image.asset(
                    'assets/icons/instagram_logo.png',
                    height: 40,
                    width: 40,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 12.h()),
        Align(
          alignment: Alignment.center,
          child: Text(
            '© 2025 Baisa Beauty. All rights reserved.',
            style: GoogleFonts.sansita(
              fontSize: 14.w(),
              color: Colors.grey,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _titleText(String text) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      fontSize: 20.w(),
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
  );
}

Widget _contentText(String text) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      fontSize: 14.w(),
      color: Colors.white,
    ),
  );
}
