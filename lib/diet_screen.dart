import 'package:flutter/material.dart';

class Diet_screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(
        title: Text("Ваш рацион"),
      ),
      body: SingleChildScrollView(
        child:  Column(
      children: [
        Container(
          width: 412,
          height: 917,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [              
              Positioned(
                left: 46,
                top: 400,
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
                left: 57,
                top: 414,
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
                left: 54,
                top: 456,
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
                left: 54,
                top: 518,
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
                left: 54,
                top: 487,
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
                left: 57,
                top: 749,
                child: Text(
                  'Котлеты (90 гр.)  Б: 10,9  Ж: 15,2  У: 5,1 200 ккал',
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
                left: 57,
                top: 780,
                child: Text(
                  'Картофель (100 гр.)  Б: 2,0  Ж: 0,4  У: 18,1 82 ккал',
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
                left: 134,
                top: 565,
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
                left: 119,
                top: 865,
                child: Text(
                  'Итого: Б: 12,9  Ж: 15,6  У:  23,2  282 ккал',
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
                left: 46,
                top: 100,
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
                top: 113,
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
                top: 311,
                child: Text(
                  'Полдник:',
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
                left: 59,
                top: 155,
                child: Text(
                  'Яичница (250 гр.)  Б: 30,8  Ж: 26,2  У: 1,7 379 ккал',
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
                top: 346,
                child: Text(
                  'Печенье (30 гр.)  Б: 2,5  Ж: 4,5  У: 20,4   135 ккал',
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
                left: 57,
                top: 611,
                child: Text(
                  'Перекус:',
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
                left: 57,
                top: 646,
                child: Text(
                  'Шоколад (30 гр.)  Б: 2,6  Ж: 11,4  У: 12,9   170 ккал',
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
                left: 59,
                top: 186,
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
                left: 123,
                top: 264,
                child: Text(
                  'Итого: Б: 31,6  Ж: 26,3  У:  4,7  394 ккал',
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
                top: 701,
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
                top: 714,
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
                left: 45,
                top: 601,
                child: Container(
                  width: 330,
                  height: 90,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFC8C8C8)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 45,
                top: 300,
                child: Container(
                  width: 330,
                  height: 90,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFC8C8C8)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 21,
                top: 38,
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