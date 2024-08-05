import 'package:bmi_app/manager/app_manegement_cubit/app_cubit.dart';
import 'package:bmi_app/manager/app_manegement_cubit/app_states.dart';
import 'package:bmi_app/screens/home/widgets/gender_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class GenderSection extends StatelessWidget {
  const GenderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BmiCubit, BmiStates>(
      builder: (BuildContext context, state) {
        var genderCubit = BmiCubit.get(context);
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
          ),
          child: Row(
            children: [
              customGender(
                context,
                onTap: () {
                  genderCubit.genderMale();
                },
                icon: Icons.male_rounded,
                iconColor: Colors.deepOrange,
                text: "Male",
                chose: genderCubit.genderIsMale,
              ),
              const SizedBox(
                width: 16,
              ),
              customGender(
                  context,
                onTap: () {
                  genderCubit.genderFemale();
                },
                chose: !genderCubit.genderIsMale,
                icon: Icons.female_rounded,
                text: 'Female',
                iconColor: Colors.purple,
              ),
            ],
          ),
        );
      },
    );
  }
}
