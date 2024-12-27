import 'package:flutter/material.dart';
import 'main_screen.dart';

class Dietary_rec extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(
        title: Text("Ограничения"),
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
                left: 29,
                top: 40,
                child: Text(
                  'У вас есть ограничения в питании?',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),
              CheckBoxWidget(),
              Positioned(
                left: 56,
                top: 174,
                child: Container(
                  width: 300,
                  height: 220,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFF4CAF50)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 72,
                top: 330,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ]
                  ),
                  child: SizedBox(
                  width: 268,
                  height: 44,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Color(0xFFC8C8C8)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Color(0xFFC8C8C8))
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Color(0xFF4CAF50))
                      ),
                      labelText: "Другое...",
                      labelStyle: TextStyle(
                        color: Color(0xFF969696),
                        fontSize: 14,
                        fontFamily: 'Open Sans',
                        height: 0,
                      
                    ),
                    ),
                  ),
                ),)
                
              ),
             Positioned(
                left: 56,
                top: 576,
                child: SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Main_screen()),);
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF4CAF50),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    "Готово",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )
                )
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
class CheckBoxWidget extends StatefulWidget {
  @override
  _CheckBoxWidgetState createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool isChecked = false; // Начальное состояние флажка
  bool isChecked2 = false;
  bool isChecked3 = false;

  @override
  Widget build(BuildContext context) {
    return 
    Column(children: [
      SizedBox(height: 191,),
      Padding(padding: EdgeInsets.only(left: 72),
      child: Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value ?? false;

            });
          },
          activeColor: Colors.green, // Цвет при активном состоянии
          checkColor: Colors.white, // Цвет галочки
        ),
        Text(
          "диабет",
          style: TextStyle(fontSize: 14),
        ),
      ],
    ),),
    Padding(padding: EdgeInsets.only(left: 72),
    child: Row(
      children: [
        Checkbox(
          value: isChecked2,
          onChanged: (bool? value) {
            setState(() {
              isChecked2 = value ?? false;
            });
          },
          activeColor: Colors.green, // Цвет при активном состоянии
          checkColor: Colors.white, // Цвет галочки
        ),
        Text(
          "целиакия",
          style: TextStyle(fontSize: 14),
        ),
      ],
    ),),
    Padding(padding: EdgeInsets.only(left: 72),
      child: Row(
      children: [
        Checkbox(
          value: isChecked3,
          onChanged: (bool? value) {
            setState(() {
              isChecked3 = value ?? false;
            });
          },
          activeColor: Colors.green, // Цвет при активном состоянии
          checkColor: Colors.white, // Цвет галочки
        ),
        Text(
          "непереносимость лактозы",
          style: TextStyle(fontSize: 14),
        ),
      ],
    ),
    ),
    
    ],)
   ;
  }
}