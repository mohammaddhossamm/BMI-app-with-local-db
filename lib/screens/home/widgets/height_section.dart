import 'package:bmi_app/manager/app_manegement_cubit/app_cubit.dart';
import 'package:bmi_app/manager/app_manegement_cubit/app_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HeightSection extends StatelessWidget {
  const HeightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BmiCubit, BmiStates>(
      builder: (BuildContext context, state) {
         var heightCubit = BmiCubit.get(context);
        return Container(
          width: MediaQuery.of(context).size.width ,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            border: Border.all(
              color: Colors.black12,
            ),
          ),
          child: AspectRatio(
            aspectRatio: 1.65/1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Height",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  "${heightCubit.height.round()}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                SfSlider(
                  showLabels: true,
                  showTicks: true,
                  minorTicksPerInterval: 5,
                  interval: 20,
                  value: heightCubit.height,
                  min: 140,
                  max: 220,
                  activeColor: Colors.indigo,
                  onChanged: (value) {
                    heightCubit.changeHeight(value);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
