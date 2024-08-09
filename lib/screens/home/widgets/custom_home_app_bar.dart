import 'package:bmi_app/screens/history_screen/history_screen.dart';
import 'package:flutter/material.dart';


customHomeAppBar(context){
 return AppBar(
        title: const Text(
          'BMI Calculator',
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
      );
}
