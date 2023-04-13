import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_ui_open_fashion/providers/homepage_image_carousel_provider.dart';

class HomepageImgeCarousel extends StatelessWidget {
  const HomepageImgeCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homepageImageCarouselProvider =
        Provider.of<HomepageImageCarouselProvider>(context);

    return Column(children: [
      CarouselSlider(
        options: CarouselOptions(
          height: 600,
          viewportFraction: 1,
          // autoPlay: true,
          // autoPlayInterval: const Duration(seconds: 3),
          // autoPlayAnimationDuration: const Duration(milliseconds: 800),
          // autoPlayCurve: Curves.fastOutSlowIn,
          onPageChanged: (index, context) =>
              homepageImageCarouselProvider.updateCurrentIndex(index),
        ),
        items: [
          "assets/images/image-1.png",
          "assets/images/image-2.png",
          "assets/images/image-3.png",
        ].map((file) {
          return Builder(
            builder: (BuildContext context) {
              return Stack(
                children: [
                  Container(
                    padding: EdgeInsets.zero,
                    child: Image.asset(
                      file,
                      fit: BoxFit.fill,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  Positioned(
                    top: 215,
                    left: 25,
                    child: Text(
                      "LUXURY",
                      style: GoogleFonts.bodoniModa(
                        fontSize: 45,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                        color: const Color.fromARGB(175, 51, 51, 51),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 265,
                    left: 50,
                    child: Text(
                      "FASHION",
                      style: GoogleFonts.bodoniModa(
                        fontSize: 45,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                        color: const Color.fromARGB(175, 51, 51, 51),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 315,
                    left: 20,
                    child: Text(
                      "& ACCESSORIES",
                      style: GoogleFonts.bodoniModa(
                        fontSize: 45,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                        color: const Color.fromARGB(175, 51, 51, 51),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 510,
                    left: 55,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(40, 13, 40, 13),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.6),
                          borderRadius:
                              const BorderRadius.all(Radius.elliptical(50, 50)),
                        ),
                        child: Text(
                          "EXPLORE COLLECTION",
                          style: GoogleFonts.tenorSans(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 565,
                    left: MediaQuery.of(context).size.width * 0.40,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < 3; i++)
                            Consumer<HomepageImageCarouselProvider>(
                                builder: (context, model, child) {
                              return Container(
                                  width: 12.0,
                                  height: 12.0,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 8.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: model.currentIndex == i
                                        ? Colors.white
                                        : Colors.grey[700],
                                  ));
                            }),
                        ]),
                  )
                ],
              );
            },
          );
        }).toList(),
      ),
    ]);
  }
}
