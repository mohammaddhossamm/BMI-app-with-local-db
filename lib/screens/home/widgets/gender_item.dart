import 'package:flutter/material.dart';

Widget customGender (
  BuildContext context,{
  bool chose=true,
  required void Function() onTap,
  required IconData icon,
  required Color iconColor,
  required String text,
}){
  return InkWell(
    borderRadius:const BorderRadius.all(Radius.circular(15),),
    onTap: onTap,
    child: Container(
      width:(MediaQuery.of(context).size.width / 2)-24,
      decoration: chose?BoxDecoration(
        borderRadius:const BorderRadius.all(
          Radius.circular(15),
        ),
        border:Border.all(
          style: BorderStyle.solid,
          color: Colors.black,
          width:2,
        ),
      ):
      BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        border:Border.all(
          style: BorderStyle.solid,
          color: Colors.black12,
          width:1,
        ),
      ),
      child: AspectRatio(
        aspectRatio: 1/1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              color: iconColor,
              size: 50,
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
