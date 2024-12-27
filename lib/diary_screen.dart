import 'package:flutter/material.dart';

class Diary_screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(
        title: Text("Дневник"),
      ),
      body: SingleChildScrollView(
        child: Column(
      children: [
        Container(
          width: 412,
          height: 917,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 57,
                top: 838,
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: Color(0xFF4CAF50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
              Positioned(
                left: 85,
                top: 852,
                child: Text(
                  'Добавить прием пищи',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 49,
                top: 321,
                child: Container(
                  width: 330,
                  height: 191,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFC8C8C8)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                   
                  ),
                ),
              ),
              Positioned(
                left: 66,
                top: 334,
                child: Text(
                  'Обед:',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 63,
                top: 376,
                child: Text(
                  'Щи (порция 250 гр.)  Б: 2,8  Ж: 5,5  У: 16,8 122 ккал',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 63,
                top: 438,
                child: Text(
                  'Яблоко (100 гр.)  Б: 0,4  Ж: 0,4  У: 9,8   47 ккал',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 63,
                top: 407,
                child: Text(
                  'Хлеб черный (30 гр.)  Б: 2,1  Ж: 0,4  У: 12,3 62 ккал',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 143,
                top: 485,
                child: Text(
                  'Итого: Б: 5,3  Ж: 6,3  У:  38,9  231 ккал',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 48,
                top: 105,
                child: Container(
                  width: 330,
                  height: 191,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFC8C8C8)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                   
                  ),
                ),
              ),
              Positioned(
                left: 65,
                top: 118,
                child: Text(
                  'Завтрак:',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 62,
                top: 160,
                child: Text(
                  'Яичница (150 гр.)  Б: 18,5  Ж: 15,7  У: 1,0 227 ккал',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 62,
                top: 191,
                child: Text(
                  'Огурец (100 гр.)  Б: 0,8  Ж: 0,1  У: 3,0 15 ккал',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 126,
                top: 269,
                child: Text(
                  'Итого: Б: 19,3  Ж: 15,8  У:  4,0  242 ккал',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 45,
                top: 537,
                child: Container(
                  width: 330,
                  height: 191,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFC8C8C8)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  
                  ),
                ),
              ),
              Positioned(
                left: 62,
                top: 550,
                child: Text(
                  'Ужин:',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 33,
                top: 40,
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
    )
      )
    )
    ;
  }
}