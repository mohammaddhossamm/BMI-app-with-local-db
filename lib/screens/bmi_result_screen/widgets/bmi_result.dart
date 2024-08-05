import 'dart:math';
import 'package:bmi_app/screens/bmi_result_screen/widgets/resutl_text.dart';
import 'package:flutter/material.dart';

Widget bmiTextResult({required double bmiRes, required int height}) {
  double weight;
  if (bmiRes < 16) {
    weight = (18.5 * pow(height / 100, 2)) - (bmiRes * pow(height / 100, 2));
    return resultText(
        number: weight.round(), keyWord: "gain", result: "Severe thinness");
  } else if (bmiRes >= 16 && bmiRes < 17) {
    weight = (18.5 * pow(height / 100, 2)) - (bmiRes * pow(height / 100, 2));
    return resultText(
        number: weight.round(), keyWord: "gain", result: "Moderate Thinness");
  } else if (bmiRes >= 17 && bmiRes < 18.5) {
    weight = (18.5 * pow(height / 100, 2)) - (bmiRes * pow(height / 100, 2));
    return resultText(
        number: weight.round(), keyWord: "gain", result: "Mild Thinness");
  } else if (bmiRes >= 18.5 && bmiRes < 25) {
    return resultText(
        number: 25, keyWord: "", result: "Normal", isNormal: true);
  } else if (bmiRes >= 25 && bmiRes < 30) {
    weight = (bmiRes * pow(height / 100, 2)) - (25.0 * pow(height / 100, 2));
    return resultText(
        number: weight.round(), keyWord: "lose", result: "Overweight");
  } else if (bmiRes >= 30 && bmiRes < 35) {
    weight = (bmiRes * pow(height / 100, 2)) - (25.0 * pow(height / 100, 2));
    return resultText(
        number: weight.round(), keyWord: "lose", result: "Obese Class I");
  } else if (bmiRes >= 35 && bmiRes < 40) {
    weight = (bmiRes * pow(height / 100, 2)) - (25.0 * pow(height / 100, 2));
    return resultText(
        number: weight.round(), keyWord: "lose", result: "Obese Class II");
  } else {
    weight = (bmiRes * pow(height / 100, 2)) - (25.0 * pow(height / 100, 2));
    return resultText(
        number: weight.round(), keyWord: "lose", result: "Obese Class III");
  }
}
