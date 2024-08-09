import 'package:bmi_app/manager/data_cubit/data_cubit.dart';
import 'package:bmi_app/manager/data_cubit/data_states.dart';
import 'package:bmi_app/screens/history_screen/widgets/empty_history.dart';
import 'package:bmi_app/screens/history_screen/widgets/history_list_view_item.dart';
import 'package:bmi_app/shared/component/custom_dialog.dart';
import 'package:bmi_app/shared/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryListView extends StatelessWidget {
  const HistoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DataCubit, DataStates>(
      builder: (BuildContext context, state) {
        var historyDataCubit = DataCubit.get(context);
        return historyDataCubit.dataList.isNotEmpty
            ? const CustomEmptyWidget()
            : Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    var dataDb = historyDataCubit.dataList[index];
                    return historylistviewitem(
                      title: dataDb[titleDb],
                      bmiResult: dataDb[bmiResultDb],
                      date: dataDb[dateDb],
                      height: dataDb[heightDb],
                      weight: dataDb[weightDb],
                      onTapDelete: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: const Text(
                                'Are you sure to delete this note ?',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    historyDataCubit.delete(dataDb['id']);
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    'OK',
                                    style: TextStyle(),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    'Cencel',
                                    style: TextStyle(),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      onTapEdit: () {
                        historyDataCubit.titleController =
                            TextEditingController(text: dataDb[titleDb]);
                        dialog(
                          text: 'Edit title :',
                          titleController: historyDataCubit.titleController,
                          context: context,
                          onTapOk: () {
                            historyDataCubit
                                .update(
                                    titleUpdate:
                                        historyDataCubit.titleController.text,
                                    id: dataDb['id'])
                                .then(
                                  (value) => Navigator.pop(context),
                                );
                          },
                          onTapCencel: () {
                            Navigator.pop(context);
                          },
                        );
                      },
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 16,
                    );
                  },
                  itemCount: historyDataCubit.dataList.length,
                ),
              );
      },
    );
  }
}
