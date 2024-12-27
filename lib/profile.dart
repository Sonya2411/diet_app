import 'package:flutter/material.dart';

class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return 
    Scaffold(
      appBar: AppBar(
        title: Text("Профиль"),
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
                left: 134,
                top: 54,
                child: Text(
                  'Ваш профиль',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 151,
                top: 110,
                child: Image.asset(
                'assets/photo.jpg',
                width: 110,
                height: 73,
              )),
              Positioned(
                left: 151,
                top: 102,
                child: Container(
                  width: 107,
                  height: 107,
                  decoration: ShapeDecoration(
                    shape: OvalBorder(
                      side: BorderSide(width: 1, color: Color(0xFFC8C8C8)),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 56,
                top: 242,
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFC8C8C8)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 182,
                top: 256,
                child: Text(
                  'Софья',
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
                left: 56,
                top: 313,
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFC8C8C8)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 179,
                top: 328,
                child: Text(
                  'test@ru',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 258,
                top: 439,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: ShapeDecoration(
                    color: Color(0xFF4CAF50),
                    shape: OvalBorder(),
                    
                  ),
                ),
              ),
              Positioned(
                left: 255,
                top: 436,
                child: Container(
                  width: 26,
                  height: 26,
                  decoration: ShapeDecoration(
                    shape: OvalBorder(
                      side: BorderSide(width: 1, color: Color(0xFF4CAF50)),
                    ),
                   
                  ),
                ),
              ),
              Positioned(
                left: 88,
                top: 441,
                child: Text(
                  'Мужчина',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 59,
                top: 439,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: ShapeDecoration(
                    shape: OvalBorder(),
                    
                  ),
                ),
              ),
              Positioned(
                left: 56,
                top: 436,
                child: Container(
                  width: 26,
                  height: 26,
                  decoration: ShapeDecoration(
                    shape: OvalBorder(
                      side: BorderSide(width: 1, color: Color(0xFF4CAF50)),
                    ),
                   
                  ),
                ),
              ),
              Positioned(
                left: 285,
                top: 441,
                child: Text(
                  'Женщина',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 57,
                top: 521,
                child: Container(
                  width: 300,
                  height: 200,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFC8C8C8)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 69,
                top: 540,
                child: Text(
                  'Рост: 178 см',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 70,
                top: 590,
                child: Text(
                  'Возраст: 20 лет',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 69,
                top: 565,
                child: Text(
                  'Вес: 65 кг',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 56,
                top: 784,
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
                left: 111,
                top: 798,
                child: Text(
                  'Сохранить изменения',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 11,
                top: 43,
                child: Container(
                  width: 78,
                  height: 59,
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