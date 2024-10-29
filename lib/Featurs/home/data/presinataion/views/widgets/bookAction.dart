import 'package:bookly_store/Featurs/home/data/model/bookmodel/bookmodel.dart';
import 'package:bookly_store/Featurs/home/data/presinataion/views/widgets/CusteomButton.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookmodel});

  final Bookmodel bookmodel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CusteomButton(
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            text: 'FREE',
          ),
        ),
        Expanded(
          child: CusteomButton(
            onPressed: () async {
              final Uri _url = Uri.parse(bookmodel.volumeInfo.previewLink ??
                  'https://books.google.com.eg/books?id=8XE_AAAAMAAJ&q=subject:information+system&dq=subject:information+system&hl=&cd=2&source=gbs_api');
              if (!await launchUrl(_url)) {
                await launchUrl(_url);
              }
            },
            backgroundColor: Color(0xFF2B6D48),
            textColor: Colors.white,
            borderRadius:const BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            text: 'Free Preview',
          ),
        ),
      ],
    );
  }
}
