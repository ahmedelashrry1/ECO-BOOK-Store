import 'package:bookly_store/Core/utils/assets.dart';
import 'package:bookly_store/Featurs/home/data/presinataion/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    NaviatorHome();

    // إعداد AnimationController
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4), // مدة الأنيميشن
    );

    // إعداد Animation
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );

    // تشغيل الأنيميشن عند بدء الشاشة
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose(); // تأكد من تحرير الموارد عند إغلاق الشاشة
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FadeTransition(
              opacity: _animation, // تأثير التلاشي
              child: ScaleTransition(
                scale: _animation, // تأثير التكبير التدريجي
                child: Transform.scale(
                  scale: 4, // التكبير المباشر للصورة
                  child: Image.asset(
                    AssetsData.logosplash,
                    width: 150, // عرض الصورة
                    height: 100, // ارتفاع الصورة
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Navigator Home //
  void NaviatorHome() {
    Future.delayed(const Duration(seconds: 5), () {
      Get.to(() => const HomeView(),
          transition: Transition.zoom, duration: const Duration(seconds: 2));
    });
  }
}
