import 'package:bookly_store/Featurs/home/data/model/bookmodel/bookmodel.dart';
import 'package:bookly_store/Featurs/home/data/model/bookmodel/volume_info.dart';
import 'package:bookly_store/Featurs/home/data/presinataion/views/widgets/CustomListVeiwBook.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSmailrListview extends StatelessWidget {
  const CustomSmailrListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'You can also like',
            style: GoogleFonts.permanentMarker(
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.23,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const Padding(
                  padding:
                      EdgeInsets.only(right: 10, left: 5, top: 10, bottom: 10),
                  child: CustomListVeiwBook(
                    bookmodel: Bookmodel(volumeInfo: VolumeInfo()), // Added volumeInfo parameter
                    // image: "https:images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1433161048i/1137215.jpg",
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}