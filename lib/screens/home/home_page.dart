import 'package:bmi_app/screens/home/widgets/age_weight_section.dart';
import 'package:bmi_app/screens/home/widgets/button_section.dart';
import 'package:bmi_app/screens/home/widgets/custom_home_app_bar.dart';
import 'package:bmi_app/screens/home/widgets/gender_section.dart';
import 'package:bmi_app/screens/home/widgets/height_section.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customHomeAppBar(context),
      body: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            children: [
              GenderSection(),
              HeightSection(),
              AgeWeightSection(),
              ButtonSection(),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
