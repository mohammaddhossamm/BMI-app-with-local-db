import 'package:flutter/material.dart';

class CustomEmptyWidget extends StatelessWidget {
  const CustomEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.menu_rounded,
            size: 100,
            color: Colors.grey[400],
          ),
          Text('No History',
          style: TextStyle(
            fontSize: 22,
            color: Colors.grey[400],
          ),
          ),
        ],
      ),
    );
  }
}