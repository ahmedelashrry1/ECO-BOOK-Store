import 'package:bookly_store/Featurs/home/data/presinataion/views/widgets/CustomAppBarDetails.dart';
import 'package:bookly_store/Featurs/home/data/presinataion/views/widgets/SmailrListview.dart';
import 'package:bookly_store/Featurs/home/data/presinataion/views/widgets/bookAction.dart';
import 'package:bookly_store/Featurs/home/data/presinataion/views/widgets/customTextDetails.dart';
import 'package:bookly_store/Featurs/home/data/presinataion/views/widgets/CustomListVeiwBook.dart';
import 'package:flutter/material.dart';

class DetailsBookView extends StatelessWidget {
  const DetailsBookView({super.key});
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppBarDetails(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 106),
              child: Column(
                children: [
                  SizedBox(height: 5),
                  CustomListVeiwBook(
                    image: 'https://en.wikipedia.org/wiki/File:Gutenberg_Bible,_Lenox_Copy,_New_York_Public_Library,_2009._Pic_01.jpg',
                  ),
                  SizedBox(height: 20),
                  customTextDetails(),
                  SizedBox(height: 10),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: BookAction(),
            ),
            SizedBox(height: 10),
            CustomSmailrListview(),
          ],
        ),
      ),
    );
  }
}
