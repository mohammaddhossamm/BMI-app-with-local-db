import 'package:bmi_app/manager/app_manegement_cubit/app_cubit.dart';
import 'package:bmi_app/manager/app_manegement_cubit/app_states.dart';
import 'package:bmi_app/shared/component/text_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultTextBox extends StatelessWidget {
  const ResultTextBox({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BmiCubit, BmiStates>(
      builder: (BuildContext context, state) {
        var textBoxCubit = BmiCubit.get(context);
        return Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all()),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        textListViewItem(
                          text: textBoxCubit.genderIsMale
                              ? 'Gender : Male'
                              : 'Gender : Female',
                          size: 18,
                        ),
                        textListViewItem(
                          text: 'Age : ${textBoxCubit.age}',
                          size: 18,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        textListViewItem(
                          text: 'Height : ${textBoxCubit.height.round()}',
                          size: 18,
                        ),
                        textListViewItem(
                          text: 'Weight : ${textBoxCubit.weight}',
                          size: 18,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
