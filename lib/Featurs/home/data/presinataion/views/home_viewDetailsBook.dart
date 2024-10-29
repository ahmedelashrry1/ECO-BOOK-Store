import 'package:bookly_store/Featurs/home/data/model/bookmodel/bookmodel.dart';
import 'package:bookly_store/Featurs/home/data/presinataion/manger/cubit/cubit/featch_simellar_cubit.dart';
import 'package:bookly_store/Featurs/home/data/presinataion/views/widgets/CustomAppBarDetails.dart';
import 'package:bookly_store/Featurs/home/data/presinataion/views/widgets/SmailrListview.dart';
import 'package:bookly_store/Featurs/home/data/presinataion/views/widgets/bookAction.dart';
import 'package:bookly_store/Featurs/home/data/presinataion/views/widgets/customTextDetails.dart';
import 'package:bookly_store/Featurs/home/data/presinataion/views/widgets/CustomListVeiwBook.dart';
import 'package:bookly_store/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsBookView extends StatelessWidget {
  const DetailsBookView({super.key, required this.bookmodel});
  final Bookmodel bookmodel;
  Widget build(BuildContext context) {
    return BlocBuilder<FeatchSimellarCubit, FeatchSimellarState>(
      builder: (context, state) {
        if (state is FeatchSimellarSuccess) {
          return SafeArea(
            child: Scaffold(
              body: Column(
                children: [
                  const CustomAppBarDetails(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 106),
                    child: Column(
                      children: [
                        const SizedBox(height: 5),
                        CustomListVeiwBook(
                          bookmodel: bookmodel,
                        ),
                        const SizedBox(height: 20),
                        customTextDetails(
                        bookmodel: bookmodel,
                          title: bookmodel.volumeInfo.title ?? 'No Title', // تمرير العنوان الصحيح
                          count: bookmodel.volumeInfo.pageCount ?? 0, // تمرير عدد الصفحات
                          route: bookmodel.volumeInfo.publishedDate ?? 'Unknown Date', // تمرير تاريخ النشر
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: BookAction(),
                  ),
                  const SizedBox(height: 10),
                  const CustomSmailrListview(),
                ],
              ),
            ),
          );
        } else if (state is FeatchSimellarError) {
          return Center(child: Text(state.error));
        } else if (state is FeatchSimellarLoading) {
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
  }
  }