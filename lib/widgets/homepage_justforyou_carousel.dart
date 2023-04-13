import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_ui_open_fashion/providers/homepage_justforyou_carousel_provider.dart';

class HomepageJustforyouCarousel extends StatelessWidget {
  const HomepageJustforyouCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homepageJustforyouCarouselProvider =
        Provider.of<HomepageJustforyouCarouselProvider>(context);

    final List<Map<String, String>> product = [
      {
        "image": "assets/images/image-8.png",
        "title": "Harris Tweed Three Jacket",
        "price": "\$120"
      },
      {
        "image": "assets/images/image-8.png",
        "title": "Cashmere Blend Cropped Jacket",
        "price": "\$120"
      },
      {
        "image": "assets/images/image-8.png",
        "title": "21WN reversible angora cardigan",
        "price": "\$120"
      }
    ];

    return Column(children: [
      CarouselSlider(
        options: CarouselOptions(
          height: 400,
          viewportFraction: 0.75,
          initialPage: 0,
          onPageChanged: (index, context) =>
              homepageJustforyouCarouselProvider.updateCurrentIndex(index),
        ),
        items: [
          0,
          1,
          2,
        ].map((index) {
          return Builder(builder: (BuildContext context) {
            return Column(
              children: [
                Image.asset(
                  fit: BoxFit.fill,
                  height: 300,
                  product[index]['image']!,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  product[index]['title']!,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.tenorSans(
                      textStyle: const TextStyle(fontSize: 14)),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(product[index]['price']!,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.tenorSans(
                        textStyle: const TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 221, 133, 96)))),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < 3; i++)
                          Consumer<HomepageJustforyouCarouselProvider>(
                              builder: (context, model, child) {
                            return Container(
                                width: 8.0,
                                height: 8.0,
                                margin: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 8.0),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: model.currentIndex == i
                                      ? Colors.grey[700]
                                      : Colors.grey[400],
                                ));
                          }),
                      ]),
                )
              ],
            );
          });
        }).toList(),
      ),
    ]);
  }
}
