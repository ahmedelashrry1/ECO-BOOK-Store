import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextBody extends StatelessWidget {
  const CustomTextBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Best",
            style: GoogleFonts.creepster(
              color: const Color.fromARGB(255, 255, 255, 255),
              // fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          Text(
            " Seller",
            style: GoogleFonts.creepster(
              color: const Color(0xff2A6D48),
              // fontWeight: FontWeight.w600,
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}
