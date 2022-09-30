import 'package:currency_converter/screens/cubit/main_cubit.dart';
import 'package:currency_converter/screens/state/main_state.dart';
import 'package:currency_converter/screens/view/pages/about_us_page.dart';
import 'package:currency_converter/screens/view/pages/exchange_page.dart';
import 'package:currency_converter/screens/view/pages/home_page.dart';
import 'package:currency_converter/screens/view/pages/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit(),
      child: mainScaffold(),
    );
  }

  Scaffold mainScaffold() => Scaffold(
        resizeToAvoidBottomInset: false,
        body: BlocConsumer<MainCubit, MainState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is OnBoardingState) {
              return OnBoardingView();
            } else if (state is HomeState) {
              return HomeView();
            } else if (state is ExchangeState) {
              return ExchangeView();
            } else if (state is AboutUsState) {
              return AboutUsView();
            } else {
              return SizedBox();
            }
          },
        ),
      );
}
