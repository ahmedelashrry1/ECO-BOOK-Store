
import 'package:bookly_store/Featurs/home/data/presinataion/manger/cubit/featch_best_sellar_cubit.dart';
import 'package:bookly_store/Featurs/home/data/presinataion/views/widgets/CustomListVeiwBook.dart';
import 'package:bookly_store/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSmailrListview extends StatelessWidget {
  const CustomSmailrListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatchBestSellarCubit, FeatchBestSellarState>(
      builder: (context, state) {
        if (state is FeatchBestSellarSuccess) {
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
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            right: 0, left: 10, top: 10, bottom: 10),
                        child: CustomListVeiwBook(
                          bookmodel: state.books[index],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          );
        } else if (state is FeatchBestSellarFailure) {
          return Center(child: Text(state.errMessage));
        } else if (state is FeatchBestSellarLoading) {
          return const Center(child: CircularProgressIndicator(
                color: kColor,
            strokeWidth: 5,
            backgroundColor: Colors.white,
          ));
        } else {
          return const SizedBox.shrink(); // Default case to return an empty widget
        }
      },
    );
  }}