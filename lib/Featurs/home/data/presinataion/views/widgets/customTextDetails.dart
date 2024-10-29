import 'package:bookly_store/consts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class customTextDetails extends StatelessWidget {
  const customTextDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'The Jungle Book ',
          style: GoogleFonts.lobster(fontSize: 22, fontWeight: FontWeight.w500),
        ),
        Text(
          'Rudyard Kipling',
          style: GoogleFonts.eduNswActFoundation(
              fontSize: 19, fontWeight: FontWeight.w500, color: kColor),
        ),
        const SizedBox(height: 10),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.solidStar,
              color: Colors.yellow,
              size: 15,
            ),
            SizedBox(width: 7),
            Text(
              '4.8',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 7),
            Text(
              '(245)',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}
