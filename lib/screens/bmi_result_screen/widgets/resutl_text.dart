import 'package:flutter/material.dart';

Widget resultText(
    {required String result,
    required String keyWord,
    required int number,
    bool isNormal = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Center(
        child: Container(
          padding: const EdgeInsets.all(9),
          decoration: const BoxDecoration(
            color: Colors.deepOrange,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Text(
            result,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      const Text(
        'Healthy BMI range: from 18.5 to 25',
        style: TextStyle(
          fontSize: 17,
        ),
      ),
      Text(
        isNormal
            ? 'Nice, your body is perfect'
            : 'You should $keyWord: $number kg',
        style: const TextStyle(
          fontSize: 17,
        ),
      ),
    ],
  );
}
