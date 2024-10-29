import 'package:bookly_store/Featurs/home/data/presinataion/views/widgets/CusteomButton.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CusteomButton(
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            text: '19.99€',
          ),
        ),
        Expanded(
          child: CusteomButton(
            backgroundColor: Color(0xFF2B6D48),
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
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
