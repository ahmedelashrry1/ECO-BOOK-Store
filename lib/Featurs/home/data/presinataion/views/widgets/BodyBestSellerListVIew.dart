import 'package:bookly_store/Featurs/home/data/model/bookmodel/bookmodel.dart';
import 'package:bookly_store/Featurs/home/data/presinataion/views/widgets/BestSellarListViewIteam.dart';
import 'package:bookly_store/consts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyBestSellerListVIew extends StatelessWidget {
  const BodyBestSellerListVIew({
    super.key, required this.bookmodel,
  });
  final Bookmodel bookmodel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: Row(
        // تم استخدام Row لتنظيم العناصر أفقياً
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min, // جعل Row يأخذ المساحة المطلوبة فقط
        children: [
          BestSellarListViewIteam(
            bookmodel: bookmodel,
            image: Image.network(
              'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1433161048i/1137215.jpg',
              
            )
          ),

          const SizedBox(width: 10), // مسافة بين العناصر

          Flexible(
            // استخدام Flexible بدلاً من Expanded
            fit: FlexFit.loose, // السماح للعنصر بأخذ المساحة المتاحة فقط
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Harry Potter and the Goblet for free  ',
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
                Text('19.99 \$',
                    style: GoogleFonts.blackOpsOne(
                      fontSize: 20,
                    )),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.solidStar,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    SizedBox(width: 7),
                    Text('4.8',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                    SizedBox(width: 7),
                    Text('(245)',
                        style: TextStyle(fontSize: 14, color: Colors.grey)),
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