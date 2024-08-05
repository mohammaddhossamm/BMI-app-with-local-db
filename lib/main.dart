import 'package:bmi_app/manager/data_cubit/data_cubit.dart';
import 'package:bmi_app/screens/home/home_page.dart';
import 'package:bmi_app/shared/custom_them_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'manager/app_manegement_cubit/app_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BmiCubit()),
        BlocProvider(create: (context) => DataCubit()..createData()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: customThemData(),
        home: const HomePage(),
      ),
    );
  }
}
