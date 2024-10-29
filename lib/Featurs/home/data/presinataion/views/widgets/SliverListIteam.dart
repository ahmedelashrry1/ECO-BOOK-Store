import 'package:bookly_store/Featurs/home/data/presinataion/manger/cubit/featch_best_sellar_cubit.dart';
import 'package:bookly_store/Featurs/home/data/presinataion/views/home_viewDetailsBook.dart';
import 'package:bookly_store/Featurs/home/data/presinataion/views/widgets/BodyBestSellerListVIew.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SliverListIteam extends StatelessWidget {
  const SliverListIteam({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatchBestSellarCubit, FeatchBestSellarState>(
      builder: (context, state) {
        if (state is FeatchBestSellarSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const DetailsBookView(),
                      ),
                    );
                  },
                  child:  BodyBestSellerListVIew(
                    bookmodel: state.books[index],
                  ),
                );
              },
              childCount: state.books.length, // عدد العناصر في القائمة
            ),
          );
        } else if (state is FeatchBestSellarLoading) {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (state is FeatchBestSellarFailure) {
          return SliverToBoxAdapter(
            child: Center(child: Text(state.errMessage)),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(child: Text('Unknown state')),
          );
        }
      },
    );
  }
}
