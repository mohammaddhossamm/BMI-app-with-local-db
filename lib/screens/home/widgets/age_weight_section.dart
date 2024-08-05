import 'package:bmi_app/manager/app_manegement_cubit/app_cubit.dart';
import 'package:bmi_app/manager/app_manegement_cubit/app_states.dart';
import 'package:bmi_app/screens/home/widgets/age_weight_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AgeWeightSection extends StatelessWidget {
  const AgeWeightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BmiCubit, BmiStates>(
      builder: (BuildContext context, state) {
        var ageWeighttCubit = BmiCubit.get(context);
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
          ),
          child: Row(
            children: [
              customAgeWeight(
                context,
                text: 'Weight',
                addTap: () {
                  ageWeighttCubit.add(isWeight: true);
                },
                minsTap: () {
                  ageWeighttCubit.mins(isWeight: true);
                },
                number: ageWeighttCubit.weight,
              ),
              const SizedBox(
                width: 16,
              ),
              customAgeWeight(
                context,
                text: 'Age ',
                addTap: () {
                  ageWeighttCubit.add(isWeight: false);
                },
                minsTap: () {
                  ageWeighttCubit.mins(isWeight: false);
                },
                number: ageWeighttCubit.age,
              ),
            ],
          ),
        );
      },
    );
  }
}
