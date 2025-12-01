import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar/colors/app_colors.dart';
import 'package:nectar/cubit/home_cubit.dart';
import 'package:nectar/screens/home_screen.dart';
import 'package:nectar/screens/splash_screen.dart';


void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (context) => HomeCubit())
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nectar',
      theme: ThemeData(
        colorScheme: ColorScheme.light(primary: AppColors.green),
      ),
      home: SplashScreen(),
    );
  }
}
