import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertask/Screens/HomeScreen.dart';
import 'package:fluttertask/Screens/MainScreen.dart';
import 'CubitInternet/internet_cubic.dart';
import 'Utils/Constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //block Provider
    return BlocProvider(
      create: (context) => InternetCubic(),

      child: MaterialApp(
        title: 'Bursa App',
        theme: ThemeData(
          appBarTheme: Theme.of(context)
              .appBarTheme
              .copyWith(brightness: Brightness.light),
        ),
        debugShowCheckedModeBanner: false,
        home: const MainScreen(),
      ),
    );
  }
}
