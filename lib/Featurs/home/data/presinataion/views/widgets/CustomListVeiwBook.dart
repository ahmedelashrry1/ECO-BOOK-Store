import 'package:bookly_store/consts.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomListVeiwBook extends StatelessWidget {
  final String image;

  const CustomListVeiwBook({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: CachedNetworkImage(
        fit: BoxFit.fill,
        imageUrl: image,
        placeholder: (context, url) =>const Center(
          child: CircularProgressIndicator(
            color: kColor,
            strokeWidth: 2,
            backgroundColor: Colors.white,
            
          ),
        ),
        errorWidget: (context, url, error) => Image.network(
          'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1433161048i/1137215.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}