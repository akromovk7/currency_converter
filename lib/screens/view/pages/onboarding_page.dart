import 'dart:async';

import 'package:currency_converter/screens/cubit/main_cubit.dart';
import 'package:currency_converter/screens/state/main_state.dart';
import 'package:flutter/material.dart';
import 'package:currency_converter/core/base/size_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(milliseconds: 1500), () {
      context.read<MainCubit>().changeState(HomeState());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: context.height,
          width: context.width,
          child: Lottie.asset("assets/lottie/dollar.json"),
        ),
      ),
    );
  }
}
