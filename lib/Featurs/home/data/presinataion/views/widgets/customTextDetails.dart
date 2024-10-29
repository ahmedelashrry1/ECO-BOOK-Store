import 'package:bookly_store/Featurs/home/data/model/bookmodel/bookmodel.dart';
import 'package:bookly_store/consts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class customTextDetails extends StatelessWidget {
  const customTextDetails(
      {super.key,
      required this.route,
      required this.count,
      required this.title,
      required this.bookmodel});

  @override
  final Bookmodel bookmodel;
  final String route;
  final int count;
  final String title;
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "$title",
          style: GoogleFonts.rubikWetPaint(fontSize: 22, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
          maxLines: 2,
        ),
        Text(
          'Rudyard Kipling',
          style: GoogleFonts.eduNswActFoundation(
              fontSize: 19, fontWeight: FontWeight.w500, color: kColor),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              FontAwesomeIcons.solidStar,
              color: Colors.yellow,
              size: 15,
            ),
            SizedBox(width: 7),
            Text(
              route.toString(),
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 7),
            Text(
              '($count)',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}
