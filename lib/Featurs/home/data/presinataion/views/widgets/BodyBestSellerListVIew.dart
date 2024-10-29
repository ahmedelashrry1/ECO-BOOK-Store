import 'package:bookly_store/Featurs/home/data/model/bookmodel/bookmodel.dart';
import 'package:bookly_store/Featurs/home/data/presinataion/views/widgets/BestSellarListViewIteam.dart';
import 'package:bookly_store/consts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyBestSellerListVIew extends StatelessWidget {
  const BodyBestSellerListVIew({
    super.key,
    required this.bookmodel,
    required this.route,
    required this.count, required this.title,
  });
  final Bookmodel bookmodel;
  final String route;
  final int count;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          BestSellarListViewIteam(
              bookmodel: bookmodel,
              image: Image.network(
                'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1433161048i/1137215.jpg',
              )),
          const SizedBox(width: 10),
          Flexible(
            fit: FlexFit.loose,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$title',
                  style: GoogleFonts.merienda(
                      fontSize: 19, fontWeight: FontWeight.w500),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5),
                Text('J.k Rowling',
                    style: GoogleFonts.noticiaText(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: kColor,
                    )),
                const SizedBox(height: 5),
                Text('FREE',
                    style: GoogleFonts.blackOpsOne(
                      fontSize: 20,
                    )),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Icon(
                      FontAwesomeIcons.solidStar,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    const SizedBox(width: 7),
                    Text(route.toString(),
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                    const SizedBox(width: 7),
                    Text('($count)',
                        style:
                            const TextStyle(fontSize: 14, color: Colors.grey)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
