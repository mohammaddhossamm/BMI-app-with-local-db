import 'package:flutter/material.dart';

void dialog({
  required BuildContext context,
  required void Function() onTapOk,
  required void Function() onTapCencel,
  required TextEditingController titleController,
  required String text,
}){
  showDialog(
    context: context,
    builder:(context) {
      return AlertDialog(
      content:TextField(
        controller: titleController,
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.title_outlined
          ),
          hintText: "Add title",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
        ),
      ),
      actions: [
        TextButton(
          onPressed: onTapOk,
          child:const Text(
            'OK',
            style: TextStyle(
            ),
          ),
        ),
        TextButton(
          onPressed: onTapCencel,
          child:const Text(
            'Cencel',
            style: TextStyle(
            ),
          ),
        ),
      ],
      title: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
    );
    } ,);
}