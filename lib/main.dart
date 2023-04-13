import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slicing_ui_open_fashion/providers/homepage_image_carousel_provider.dart';
import 'package:slicing_ui_open_fashion/providers/homepage_justforyou_carousel_provider.dart';
import 'package:slicing_ui_open_fashion/providers/homepage_new_arrival_carousel_provider.dart';
import 'package:slicing_ui_open_fashion/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomepageImageCarouselProvider>(
          create: (context) => HomepageImageCarouselProvider(),
        ),
        ChangeNotifierProvider<HomepageNewArrivalCarouselProvider>(
          create: (context) => HomepageNewArrivalCarouselProvider(),
        ),
        ChangeNotifierProvider<HomepageJustforyouCarouselProvider>(
          create: (context) => HomepageJustforyouCarouselProvider(),
        )
      ],
      child: const MaterialApp(
          debugShowCheckedModeBanner: false, home: HomePage()),
    );
  }
}
