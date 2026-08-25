import 'package:bookly_app/features/presentation/AppRouter.dart';
import 'package:bookly_app/features/views/widget/anationSlied.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void initState() {
    super.initState();

    animationsliedController();

    naveigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("assats/images/Logo.png"),

        Anmationslied(animation: animation),
      ],
    );
  }

  void animationsliedController() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    animation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  void naveigateToHome() {
    Future.delayed(const Duration(milliseconds: 200), () {
      // ignore: use_build_context_synchronously
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }
}
