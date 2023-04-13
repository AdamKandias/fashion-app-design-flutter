import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slicing_ui_open_fashion/providers/homepage_new_arrival_carousel_provider.dart';
import 'package:slicing_ui_open_fashion/widgets/appbar.dart';
import 'package:slicing_ui_open_fashion/widgets/footer.dart';
import 'package:slicing_ui_open_fashion/widgets/homepage_image_carousel.dart';
import 'package:slicing_ui_open_fashion/widgets/homepage_justforyou_carousel.dart';
import 'package:slicing_ui_open_fashion/widgets/homepage_new_arrival_carousel.dart';
import 'package:slicing_ui_open_fashion/widgets/instagram_grid.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomepageImgeCarousel(),
            const SizedBox(
              height: 60,
            ),
            Column(
              children: [
                Column(
                  children: [
                    Center(
                      child: Text("NEW ARRIVAL",
                          style: GoogleFonts.tenorSans(
                              fontSize: 24,
                              fontWeight: FontWeight.normal,
                              color: const Color.fromARGB(255, 0, 0, 0),
                              textStyle: const TextStyle(letterSpacing: 4))),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Center(
                      child: Image.asset(
                        "assets/images/line.png",
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Consumer<HomepageNewArrivalCarouselProvider>(
                        builder: (context, model, child) {
                      return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    model.updateCurrentIndex(0);
                                  },
                                  child: Text("All",
                                      style: GoogleFonts.tenorSans(
                                          fontSize: 18,
                                          color: model.currentIndex == 0
                                              ? Colors.black
                                              : const Color.fromARGB(
                                                  255, 136, 136, 136))),
                                ),
                                Container(
                                    width: 8.0,
                                    height: 8.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: model.currentIndex == 0
                                          ? const Color.fromARGB(
                                              255, 221, 133, 96)
                                          : Colors.transparent,
                                    ))
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    model.updateCurrentIndex(1);
                                  },
                                  child: Text("Apparel",
                                      style: GoogleFonts.tenorSans(
                                          fontSize: 18,
                                          color: model.currentIndex == 1
                                              ? Colors.black
                                              : const Color.fromARGB(
                                                  255, 136, 136, 136))),
                                ),
                                Container(
                                    width: 8.0,
                                    height: 8.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: model.currentIndex == 1
                                          ? const Color.fromARGB(
                                              255, 221, 133, 96)
                                          : Colors.transparent,
                                    ))
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    model.updateCurrentIndex(2);
                                  },
                                  child: Text("Dress",
                                      style: GoogleFonts.tenorSans(
                                          fontSize: 18,
                                          color: model.currentIndex == 2
                                              ? Colors.black
                                              : const Color.fromARGB(
                                                  255, 136, 136, 136))),
                                ),
                                Container(
                                    width: 8.0,
                                    height: 8.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: model.currentIndex == 2
                                          ? const Color.fromARGB(
                                              255, 221, 133, 96)
                                          : Colors.transparent,
                                    ))
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    model.updateCurrentIndex(3);
                                  },
                                  child: Text("Tshirt",
                                      style: GoogleFonts.tenorSans(
                                          fontSize: 18,
                                          color: model.currentIndex == 3
                                              ? Colors.black
                                              : const Color.fromARGB(
                                                  255, 136, 136, 136))),
                                ),
                                Container(
                                    width: 8.0,
                                    height: 8.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: model.currentIndex == 3
                                          ? const Color.fromARGB(
                                              255, 221, 133, 96)
                                          : Colors.transparent,
                                    ))
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    model.updateCurrentIndex(4);
                                  },
                                  child: Text("Bag",
                                      style: GoogleFonts.tenorSans(
                                          fontSize: 18,
                                          color: model.currentIndex == 4
                                              ? Colors.black
                                              : const Color.fromARGB(
                                                  255, 136, 136, 136))),
                                ),
                                Container(
                                    width: 8.0,
                                    height: 8.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: model.currentIndex == 4
                                          ? const Color.fromARGB(
                                              255, 221, 133, 96)
                                          : Colors.transparent,
                                    ))
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                          ]);
                    }),
                    const SizedBox(
                      height: 20,
                    ),
                    const HomepageNewArrivalCarousel(),
                    const SizedBox(
                      height: 30,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: SizedBox(
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Explore More',
                              style: GoogleFonts.tenorSans(
                                  fontSize: 18, color: Colors.black),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(
                              Icons.arrow_forward_sharp,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: Image.asset(
                        "assets/images/line.png",
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GridView.builder(
                        padding: EdgeInsets.zero,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 2.5,
                          crossAxisCount: 3,
                        ),
                        itemCount: 6,
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          final images = [
                            "assets/images/prada.png",
                            "assets/images/burberry.png",
                            "assets/images/boss.png",
                            "assets/images/catier.png",
                            "assets/images/gucci.png",
                            "assets/images/tiffany.png",
                          ];

                          return GestureDetector(
                            child: Image.asset(
                              images[index % images.length],
                            ),
                          );
                        }),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Image.asset(
                    "assets/images/line.png",
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
            Center(
              child: Text("COLLECTIONS",
                  style: GoogleFonts.tenorSans(
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                      color: const Color.fromARGB(255, 0, 0, 0),
                      textStyle: const TextStyle(letterSpacing: 4))),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Image.asset(
                  "assets/images/collections-1.png",
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(60, 40, 60, 40),
                  child: Image.asset(
                    "assets/images/collections-2.png",
                    width: MediaQuery.of(context).size.width * 0.8,
                    fit: BoxFit.cover,
                  ),
                ),
                Image.asset(
                  "assets/images/collections-3.png",
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Center(
              child: Text("JUST FOR YOU",
                  style: GoogleFonts.tenorSans(
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                      color: const Color.fromARGB(255, 0, 0, 0),
                      textStyle: const TextStyle(letterSpacing: 4))),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Image.asset(
                "assets/images/line.png",
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const HomepageJustforyouCarousel(),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Text("@TRENDING",
                  style: GoogleFonts.tenorSans(
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                      color: const Color.fromARGB(255, 0, 0, 0),
                      textStyle: const TextStyle(letterSpacing: 4))),
            ),
            const SizedBox(
              height: 30,
            ),
            LayoutBuilder(
              builder: (context, constraint) {
                List items = [
                  {
                    'id': 1,
                    'category_name': '2021',
                  },
                  {
                    'id': 2,
                    'category_name': 'spring',
                  },
                  {
                    'id': 3,
                    'category_name': 'collection',
                  },
                  {
                    'id': 4,
                    'category_name': 'fall',
                  },
                  {
                    'id': 5,
                    'category_name': 'dress',
                  },
                  {
                    'id': 6,
                    'category_name': 'autumncollection',
                  },
                  {
                    'id': 7,
                    'category_name': 'openfashion',
                  },
                ];
                return Center(
                  child: Wrap(
                    children: List.generate(
                      items.length,
                      (index) {
                        return Card(
                          shadowColor: Colors.transparent,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 17.0,
                              vertical: 10.0,
                            ),
                            child: Text(
                              "@${items[index]["category_name"]}",
                              style: const TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      "Making a luxurious lifestyle accessible for a generous group of women is our daily drive.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.tenorSans(
                          textStyle: const TextStyle(fontSize: 17),
                          color: const Color.fromARGB(255, 85, 85, 85)),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Image.asset(
                      "assets/images/line.png",
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GridView.builder(
                    padding: EdgeInsets.zero,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 15,
                            childAspectRatio: 1.8),
                    itemCount: 4,
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Image.asset(
                            "assets/images/miroodles-${index + 1}.png",
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Fast shipping. Free on orders over \$25.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.tenorSans(
                                textStyle: const TextStyle(fontSize: 14),
                                color: const Color.fromARGB(255, 85, 85, 85)),
                          ),
                        ],
                      );
                    },
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Center(
                      child: Image.asset(
                    "assets/images/wind.png",
                    fit: BoxFit.fill,
                  )),
                  const SizedBox(
                    height: 60,
                  ),
                  Column(
                    children: [
                      Center(
                        child: Text("FOLLOW US",
                            style: GoogleFonts.tenorSans(
                                fontSize: 24,
                                fontWeight: FontWeight.normal,
                                color: const Color.fromARGB(255, 0, 0, 0),
                                textStyle: const TextStyle(letterSpacing: 4))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                          child: Image.asset(
                        width: 30,
                        height: 30,
                        "assets/images/instagram.png",
                        fit: BoxFit.fill,
                      )),
                      const SizedBox(
                        height: 25,
                      ),
                      InstagramGrid(),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Image.asset(
                              width: 21,
                              height: 21,
                              "assets/images/twitter-fill.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          InkWell(
                            child: Image.asset(
                              width: 25,
                              height: 25,
                              "assets/images/instagram-fill.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          InkWell(
                            child: Image.asset(
                              width: 25,
                              height: 25,
                              "assets/images/youtube-fill.png",
                              fit: BoxFit.fill,
                            ),
                          )
                        ],
                      ),
                      const Footer(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
