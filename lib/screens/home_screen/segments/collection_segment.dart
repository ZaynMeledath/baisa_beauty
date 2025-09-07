part of '../home_screen.dart';

Widget collectionSegment() {
  final photos = [
    'assets/images/jewel_image_1.jpg',
    'assets/images/jewel_image_2.jpg',
    'assets/images/jewel_image_3.jpg',
    'assets/images/jewel_image_4.jpg',
  ];
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 24.w()),
    child: SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Our Collection',
            style: GoogleFonts.sansita(
              fontSize: 30.w(),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 24.h()),
          SizedBox(
            width: double.maxFinite,
            height: 450.h(),
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: .3,
                aspectRatio: 3 / 5,
              ),
              items: photos.map((photo) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    photo,
                    fit: BoxFit.contain,
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    ),
  );
}
