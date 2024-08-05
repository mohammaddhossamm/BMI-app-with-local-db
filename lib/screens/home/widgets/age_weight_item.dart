import 'package:flutter/material.dart';


Widget customAgeWeight (
  BuildContext context,{
  required void Function() addTap,
  required void Function() minsTap,
  required String text,
  required int number,
}){
  return Container(
    width:(MediaQuery.of(context).size.width / 2)-24,
    decoration: BoxDecoration(
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
        Text(
        text,
        style: const TextStyle(
          fontSize: 18,
        ),
        ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                borderRadius: const BorderRadius.all(Radius.circular(5),),
                onTap: minsTap,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    ),
                    border:Border.all(
                      style: BorderStyle.solid,
                      color: Colors.black12,
                      width:1,
                    ),
                  ),
                  child:const Icon(
                    Icons.remove,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),
              Text(
                '$number',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              InkWell(
                borderRadius: const BorderRadius.all(Radius.circular(5),),
                onTap: addTap,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:const BorderRadius.all(
                      Radius.circular(5),
                    ),
                    border:Border.all(
                      style: BorderStyle.solid,
                      color: Colors.black12,
                      width:1,
                    ),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
