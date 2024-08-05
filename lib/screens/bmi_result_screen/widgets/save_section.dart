import 'package:bmi_app/manager/app_manegement_cubit/app_cubit.dart';
import 'package:bmi_app/manager/data_cubit/data_cubit.dart';
import 'package:bmi_app/manager/data_cubit/data_states.dart';
import 'package:bmi_app/shared/component/custom_dialog.dart';
import 'package:bmi_app/shared/component/text_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class SaveSection extends StatelessWidget {
  const SaveSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DataCubit, DataStates>(
      builder: (BuildContext context, state) {
        var resultDataCubit = DataCubit.get(context);
        var appCubit = BmiCubit.get(context);
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              onTap: () {
                resultDataCubit.titleController = TextEditingController();
                dialog(
                  text: 'Add title :',
                  titleController: resultDataCubit.titleController,
                  context: context,
                  onTapOk: () {
                    resultDataCubit.insert(
                      titleInsert: resultDataCubit.titleController.text,
                      dateInsert: DateFormat.yMMMd().format(DateTime.now()),
                      heightInsert: appCubit.height.round(),
                      resultInsert: appCubit
                          .bmiCalculate(appCubit.height, appCubit.weight)
                          .toStringAsFixed(2),
                      weightInsert: appCubit.weight,
                    );
                    Navigator.pop(context);
                  },
                  onTapCencel: () {
                    Navigator.pop(context);
                  },
                );
              },
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    border: Border.all()),
                child: textListViewItem(
                  text: 'Save',
                  size: 16,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    border: Border.all()),
                child: textListViewItem(
                  text: 'Again',
                  size: 16,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
