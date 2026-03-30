import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Image.asset(
            'assets/icon/schedly-icon.png',
            width: 100,
            height: 100,
            alignment: Alignment.bottomCenter,
          )
        ),

        Expanded(
          child: Container(
            color: Colors.blue,
          )
        ),
        
        Expanded(
          child: Container(
            color: Colors.red,
          )
        ),

        Expanded(
          child: Container(
            color: Colors.green,
          )
        ),
      ]     
    );
  }
}