import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        Center(
          child: Image.asset(
            "assets/images/line.png",
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text("support@openui.design",
            style: GoogleFonts.tenorSans(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: const Color.fromARGB(255, 0, 0, 0))),
        const SizedBox(
          height: 10,
        ),
        Text("+60 825 876",
            style: GoogleFonts.tenorSans(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: const Color.fromARGB(255, 0, 0, 0))),
        const SizedBox(
          height: 10,
        ),
        Text("08:00 - 22:00 - Everyday",
            style: GoogleFonts.tenorSans(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: const Color.fromARGB(255, 0, 0, 0))),
        const SizedBox(
          height: 30,
        ),
        Center(
          child: Image.asset(
            "assets/images/line.png",
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                "About",
                style: TextStyle(color: Colors.grey[900], fontSize: 16),
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Contact",
                style: TextStyle(color: Colors.grey[900], fontSize: 16),
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            TextButton(
              onPressed: () {},
              child: Text("Blog",
                  style: GoogleFonts.tenorSans(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: const Color.fromARGB(255, 0, 0, 0))),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Text("Copyright© OpenUI All Rights Reserved.",
              style: GoogleFonts.tenorSans(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: const Color.fromARGB(255, 0, 0, 0))),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
