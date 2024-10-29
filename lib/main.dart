import 'package:bookly_store/Core/utils/api_service.dart';
import 'package:bookly_store/Featurs/home/data/home_repo/home_repo_impl.dart';
import 'package:bookly_store/Featurs/home/data/presinataion/manger/cubit/cubit/featch_simellar_cubit.dart';
import 'package:bookly_store/Featurs/home/data/presinataion/manger/cubit/featch_best_sellar_cubit.dart';
import 'package:bookly_store/Featurs/home/data/presinataion/manger/home_cubit_state/featch_book_state_cubit.dart';
import 'package:bookly_store/Featurs/splash/presintation/views/spalsh_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BooklY());
}

class BooklY extends StatelessWidget {
  const BooklY({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeatchBookStateCubit(
            HomeRepoImpl(
              ApiService(Dio()),
            ),
          )..fetchHome(), // استدعاء الدالة لجلب البيانات عند بدء التشغيل
        ),
        BlocProvider(
          create: (context) => FeatchBestSellarCubit(
            HomeRepoImpl(ApiService(Dio())),
          )..fetchBestSellar(),
        ),
        BlocProvider(
          create: (context) => FeatchSimellarCubit(
            HomeRepoImpl(ApiService(Dio())),
          )..fetchSimellar(),
        ),

      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(),
        home: const SplashView(),
      ),
    );
  }
}