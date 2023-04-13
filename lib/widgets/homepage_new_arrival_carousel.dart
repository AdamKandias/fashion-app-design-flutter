import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:slicing_ui_open_fashion/providers/homepage_new_arrival_carousel_provider.dart';

class HomepageNewArrivalCarousel extends StatelessWidget {
  const HomepageNewArrivalCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homepageNewArrivalCarouselProvider =
        Provider.of<HomepageNewArrivalCarouselProvider>(context);

    final List<Map<String, String>> product = [
      {
        "image": "assets/images/image-4.png",
        "title": "21WN reversible angora cardigan",
        "price": "\$120"
      },
      {
        "image": "assets/images/image-5.png",
        "title": "21WN reversible angora cardigan",
        "price": "\$120"
      },
      {
        "image": "assets/images/image-6.png",
        "title": "21WN reversible angora cardigan",
        "price": "\$120"
      },
      {
        "image": "assets/images/image-7.png",
        "title": "Oblong bag",
        "price": "\$120"
      }
    ];

    return Column(children: [
      CarouselSlider(
        options: CarouselOptions(
          height: 610,
          viewportFraction: 1,
          onPageChanged: (index, context) =>
              homepageNewArrivalCarouselProvider.updateCurrentIndex(index),
        ),
        items: [
          "all",
          "apparel",
          "dress",
          "tshirt",
          "bag",
        ].map((file) {
          return Builder(
            builder: (BuildContext context) {
              return GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.62,
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                ),
                itemCount: 4,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Image.asset(
                        fit: BoxFit.fill,
                        height: 230,
                        product[index]["image"]!,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
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
                    ],
                  );
                },
              );
            },
          );
        }).toList(),
      ),
    ]);
  }
}
