import 'package:bookly/Features/Home/presentaion/Views/home_view.dart';
import 'package:bookly/Features/Splash/Presentaton/Views/Widgets/constant.dart';
import 'package:bookly/Features/Splash/Presentaton/Views/Widgets/sliding_animation.dart';
import 'package:bookly/core/Utils/app_routs.dart';
import 'package:bookly/core/Utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();

    SlidiningIntiAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 5,
        ),
        SlidingAnimation(slidingAnimation: slidingAnimation),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  void SlidiningIntiAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation = Tween(begin: const Offset(0, 2), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).push(AppRouts.kHomeView);
    }
        // () => Get.to(() => const HomeView(),
        //     transition: Transition.circularReveal, duration: kTransionDuraing),
        );
  }
}
