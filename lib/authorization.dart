import 'package:flutter/material.dart';
import 'setting_profile.dart';

class Authorization extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    SingleChildScrollView(
      child: Column(
      children: [
        Container(
          width: 412,
          height: 786,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 21,
                top: 70,
                child: Text(
                  'Добро пожаловать в DeitApp!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 56,
                top: 201,
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
                  width: 300,
                  height: 50,
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
                      labelText: "Введите ваш e-mail...",
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
                top: 271,
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
                  width: 300,
                  height: 50,
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
                      labelText: "Введите пароль...",
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
                top: 370,
                child: SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SettingProfile()),);
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF4CAF50),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    "Войти",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )
                )
                ),
                
              ),
              Positioned(
                left: 153,
                top: 426,
                child: Text(
                  'Забыли пароль?',
                  style: TextStyle(
                    color: Color(0xFF4C9650),
                    fontSize: 14,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 79,
                top: 888,
                child: Text(
                  'Еще нет аккаунта? Зарегестрируйтесь',
                  style: TextStyle(
                    color: Color(0xFF4CAF50),
                    fontSize: 14,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 56,
                top: 459,
                child: SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SettingProfile()),);
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(width: 1, color: Color(0xFF4C9650))
                    ),
                  ),
                  child: Text(
                    "Войти c Google",
                    style: TextStyle(color: Color(0xFF4C9650), fontSize: 16),
                  )
                )
                ),
                
              ),
            ],
          ),
        ),
        
        
        
      ],
    )
    );
  }
}