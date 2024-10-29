import 'package:bookly_store/Featurs/home/data/model/bookmodel/bookmodel.dart';
import 'package:flutter/material.dart';

class BestSellarListViewIteam extends StatelessWidget {
  const BestSellarListViewIteam({super.key, required this.image, required this.bookmodel});
  final Image image;
  final Bookmodel bookmodel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 10),
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.2 / 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  image: DecorationImage(
                    image: NetworkImage(
                      bookmodel.volumeInfo.imageLinks?.thumbnail ??
                      'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1433161048i/1137215.jpg',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  }
