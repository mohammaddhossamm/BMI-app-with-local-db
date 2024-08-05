import 'package:bmi_app/shared/component/text_list_view.dart';
import 'package:flutter/material.dart';

Widget historylistviewitem({
  required int height,
  required int weight,
  required String title,
  required String bmiResult,
  required String date,
  required void Function() onTapEdit,
  required void Function() onTapDelete,
}){
  return Container(
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(15),),
      border: Border.all(color: Colors.black12,),
    ),
    child: Row(
      children: [
        Container(
          height: 130,
          width: 10,
          decoration:const BoxDecoration(
            color:Colors.purple,
            borderRadius: BorderRadius.only(
              bottomLeft:Radius.circular(15) ,
              topLeft: Radius.circular(15),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: textListViewItem(
                        text: title,
                        size: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    textListViewItem(
                      text: date,
                      size: 12,
                      color: Colors.grey,
                    ),
                  ],
                ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    textListViewItem(text: 'Height : $height '),
                    textListViewItem(text: 'Weight : $weight kg'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    textListViewItem(text: 'BMI Result : $bmiResult'),
                    Row(
                      children: [
                        IconButton(
                          onPressed: onTapEdit,
                          icon:const Icon(
                              Icons.edit
                          ),
                        ),
                        IconButton(
                          onPressed: onTapDelete,
                          icon:const Icon(
                              Icons.delete
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

