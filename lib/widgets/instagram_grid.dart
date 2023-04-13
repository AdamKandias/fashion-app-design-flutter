import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InstagramGrid extends StatelessWidget {
  InstagramGrid({super.key});

  final List<Map<String, String>> account = [
    {
      "image": "assets/images/instagram-image-1.png",
      "name": "@mia",
    },
    {
      "image": "assets/images/instagram-image-2.png",
      "name": "@_jihyn",
    },
    {
      "image": "assets/images/instagram-image-3.png",
      "name": "@mia",
    },
    {
      "image": "assets/images/instagram-image-4.png",
      "name": "@_jihyn",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1,
        crossAxisCount: 2,
      ),
      itemCount: 4,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Stack(
          children: [
            Image.asset(
              account[index]['image']!,
              fit: BoxFit.fill,
            ),
            Positioned(
              bottom: 20,
              left: 10,
              child: Text(account[index]['name']!,
                  style: GoogleFonts.tenorSans(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  )),
            )
          ],
        );
      },
    );
  }
}
