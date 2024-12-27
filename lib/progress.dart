import 'package:flutter/material.dart';

class Progress extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(
        title: Text("Прогресс"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
        Container(
          width: 412,
          height: 917,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 33,
                top: 40,
                child: Image.asset(
                'assets/graph2.jpg',
                width: 348,
                height: 329,
              )),
              Positioned(
                left: 33,
                top: 390,
                child: Image.asset(
                'assets/graph3.jpg',
                width: 358,
                height: 456,
              )),
              Positioned(
                left: 11,
                top: 10,
                child: Container(
                  width: 76,
                  height: 52,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
      )
    )
    ;
  }
}