import 'package:flutter/material.dart';
import 'diary_screen.dart';
import 'diet_screen.dart';
import 'progress.dart';
import 'profile.dart';

class Main_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Главный экран"),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
          width: 412,
          height: 917,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 100,
                top: 30,
                child: Text(
                  'Доброе утро, Софья!',
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
                left: 363,
                top: 30,
                child: SizedBox(
                  width: 35,
                  height: 38,
                  child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()),);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white),
                    ),
                    elevation: 0,
                    minimumSize: Size(35, 35)
                  ),                  
                    child: Image.asset(
                    'assets/user.png',
                    width: 35,
                    height: 35,
                    fit: BoxFit.cover,
                  ),
                )
                )
                
              ),
              Positioned(
                left: 46,
                top: 180,
                child: Container(
                  width: 330,
                  height: 120,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFC8C8C8)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 63,
                top: 212,
                child: Text(
                  'Белки: 30,2г\nЖиры: 20,1г\nУглеводы: 50г',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 247,
                top: 189,
                child: Image.asset(
                'assets/graph1.png',
                width: 80,
                height: 80,
              )),
              
              Positioned(
                left: 302,
                top: 279,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(color: Color(0xFFE4973F)),
                ),
              ),
              Positioned(
                left: 206,
                top: 279,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(color: Color(0xFF6277E2)),
                ),
              ),
              Positioned(
                left: 254,
                top: 279,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(color: Color(0xFF73C142)),
                ),
              ),
              Positioned(
                left: 317,
                top: 277,
                child: Text(
                  'Углеводы',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 10,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 220,
                top: 277,
                child: Text(
                  'Белки',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 10,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 269,
                top: 277,
                child: Text(
                  'Жиры',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 10,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 46,
                top: 371,
                child: SizedBox(
                  width: 155,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Diary_screen()),);
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF4CAF50),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    "Дневник",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )
                )
                )
                
              ),
              Positioned(
                left: 211,
                top: 371,
                child: SizedBox(
                  width: 155,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Diet_screen()),);
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF4CAF50),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    "Рацион",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )
                )
                )
                
              ),
            
              Positioned(
                left: 46,
                top: 472,
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
                left: 63,
                top: 485,
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
                left: 60,
                top: 527,
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
                left: 60,
                top: 589,
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
                left: 60,
                top: 558,
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
                left: 140,
                top: 636,
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
                left: 56,
                top: 720,
                child: 
              SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Progress()),);
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF4CAF50),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    "Прогресс",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )
                )
                ))
            ],
          ),
        )
            ],
          )
        )
        ,
    );
  }
}