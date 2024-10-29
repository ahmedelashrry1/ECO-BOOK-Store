import 'package:bookly_store/Featurs/home/data/presinataion/views/widgets/CustomAppBar.dart';
import 'package:bookly_store/Featurs/home/data/presinataion/views/widgets/CustomTextBody.dart';
import 'package:bookly_store/Featurs/home/data/presinataion/views/widgets/FutearListViewIteam.dart';
import 'package:bookly_store/Featurs/home/data/presinataion/views/widgets/SliverListIteam.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppABar(),
                  FutearListViewIteam(),
                  CustomTextBody(),
                ],
              ),
            ),
            SliverListIteam(),
          ],
        ),
      ),
    );
  }
}
