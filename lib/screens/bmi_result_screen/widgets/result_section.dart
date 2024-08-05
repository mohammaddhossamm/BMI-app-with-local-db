import 'package:bmi_app/manager/app_manegement_cubit/app_cubit.dart';
import 'package:bmi_app/manager/app_manegement_cubit/app_states.dart';
import 'package:bmi_app/screens/bmi_result_screen/widgets/bmi_result.dart';
import 'package:bmi_app/shared/component/text_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ResultSection extends StatelessWidget {
  const ResultSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BmiCubit, BmiStates>(
      builder: (BuildContext context, state) {
        var resultCubit = BmiCubit.get(context);
        return Column(
          children: [
            textListViewItem(
              text:
                  'BMI : ${resultCubit.bmiCalculate(resultCubit.height, resultCubit.weight).toStringAsFixed(2)}',
              size: 22,
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
            ),
            const SizedBox(
              height: 30,
            ),
            bmiTextResult(
              bmiRes: resultCubit.bmiCalculate(
                  resultCubit.height, resultCubit.weight),
              height: resultCubit.height,
            ),
           
          ],
        );
      },
    );
  }
}
