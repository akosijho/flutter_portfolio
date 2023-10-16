import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/app/sections/main/main_page.dart';
import 'package:my_portfolio/core/configs/connection/bloc/connected_bloc.dart';

class NoChecking extends StatelessWidget {
  const NoChecking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ConnectedBloc, ConnectedState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        if (state is ConnectedSucessState) {
          return const MainPage();
        }
        else {
          return const MainPage();
        }
      },
    );
  }
}

class NoConnectionErorr extends StatelessWidget {
  const NoConnectionErorr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // LoadingAnimationWidget.staggeredDotsWave(
            //     color: primaryColor, size: 50.0),
            // SizedBox(height: 3.h),
            Text("Connection failed!"),
          ],
        ),
      ),
    );
  }
}