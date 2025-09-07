part of '../home_screen.dart';

Widget servicesSegment() {
  return Column(
    children: [
      Text(
        'Our Services',
        style: GoogleFonts.sansita(
          fontSize: 30.w(),
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 24.h()),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 24.w()),
            _serviceCard(
              title: 'Jewelry Consultation',
              description:
                  'Personalized advice to help you choose the perfect piece.',
              icon: Icons.diamond,
            ),
            SizedBox(width: 16.w()),
            _serviceCard(
              title: 'Jewelry Customization',
              description:
                  'Custom design services to create unique jewelry pieces.',
              icon: Icons.design_services,
            ),
            SizedBox(width: 16.w()),
            _serviceCard(
              title: 'Cosmetic Consultation',
              description:
                  'Get expert tips on skincare and makeup tailored to you.',
              icon: Icons.brush,
            ),
            SizedBox(width: 16.w()),
            _serviceCard(
              title: 'Makeup Application',
              description: 'Professional makeup services for any occasion.',
              icon: Icons.face_retouching_natural,
            ),
            SizedBox(width: 24.w()),
          ],
        ),
      ),
    ],
  );
}

Widget _serviceCard({
  required String title,
  required String description,
  required IconData icon,
}) {
  return Column(
    children: [
      Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.w()),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 48.w(),
                color: Colors.blueAccent,
              ),
              SizedBox(height: 12.h()),
              Text(
                title,
                style: GoogleFonts.sansita(
                  fontSize: 20.w(),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.h()),
              Text(
                description,
                textAlign: TextAlign.center,
                style: GoogleFonts.sansita(
                  fontSize: 16.w(),
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
