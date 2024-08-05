import 'package:bmi_app/screens/bmi_result_screen/widgets/result_section.dart';
import 'package:bmi_app/screens/bmi_result_screen/widgets/result_text_box.dart';
import 'package:bmi_app/screens/bmi_result_screen/widgets/save_section.dart';
import 'package:bmi_app/screens/history_screen/history_screen.dart';
import 'package:flutter/material.dart';


class BmiResult extends StatelessWidget {
  const BmiResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Result',
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HistoryScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.bookmark,
            ),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              ResultTextBox(),
              SizedBox(
                height: 50,
              ),
              ResultSection(),
              SizedBox(
                height: 90,
              ),
              SaveSection(),
            ],
          ),
        ),
      ),
    );
  }
}
