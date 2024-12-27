import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  final ValueNotifier<bool> _dark = ValueNotifier<bool>(true);
  final ValueNotifier<double> _widthFactor = ValueNotifier<double>(1.0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ValueListenableBuilder<bool>(
            valueListenable: _dark,
            builder: (context, color, child) {
              return ValueListenableBuilder<double>(
                valueListenable: _widthFactor,
                builder: (context, factor, child) {
                  return Scaffold(
                      backgroundColor:
                          _dark.value ? Colors.black : Colors.white,
                      appBar: AppBar(
                        actions: [
                          Switch(
                            value: _dark.value,
                            onChanged: (value) {
                              _dark.value = value;
                            },
                          ),
                          DropdownButton<double>(
                            value: _widthFactor.value,
                            onChanged: (value) {
                              _widthFactor.value = value!;
                            },
                            items: [
                              DropdownMenuItem<double>(
                                value: 0.5,
                                child: Text('Size: 50%'),
                              ),
                              DropdownMenuItem<double>(
                                value: 0.75,
                                child: Text('Size: 75%'),
                              ),
                              DropdownMenuItem<double>(
                                value: 1.0,
                                child: Text('Size: 100%'),
                              ),
                            ],
                          ),
                        ],
                      ),
                      body: Center(
                          child: Container(
                        width: MediaQuery.of(context).size.width *
                            _widthFactor.value,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Authorization(),
                          ],
                        ),
                      )));
                },
              );
            }));
  }
}

class Authorization extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 412,
          height: 917,
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
                  width: 300,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFC8C8C8)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 71,
                top: 217,
                child: Text(
                  'Введите ваш e-mail...',
                  style: TextStyle(
                    color: Color(0xFF969696),
                    fontSize: 14,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 56,
                top: 271,
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFC8C8C8)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 71,
                top: 287,
                child: Text(
                  'Введите пароль...',
                  style: TextStyle(
                    color: Color(0xFF969696),
                    fontSize: 14,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 56,
                top: 376,
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
                left: 183,
                top: 390,
                child: Text(
                  'Войти',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
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
                left: 59,
                top: 459,
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF0F0F0),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFF4C9650)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 164,
                top: 477,
                child: Text(
                  'Войти с Google',
                  style: TextStyle(
                    color: Color(0xFF323232),
                    fontSize: 12,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 412,
          height: 917,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 115,
                top: 70,
                child: Text(
                  'Раскажите о себе',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 187,
                top: 137,
                child: Text(
                  'Рост',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 56,
                top: 205,
                child: Container(
                  width: 300,
                  height: 8,
                  decoration: ShapeDecoration(
                    color: Color(0xFFC8C8C8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 56,
                top: 205,
                child: Container(
                  width: 78,
                  height: 8,
                  decoration: ShapeDecoration(
                    color: Color(0xFF4CAF50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                  ),
                ),
              ),
              Positioned(
                left: 128,
                top: 199,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: ShapeDecoration(
                    color: Color(0xFF4CAF50),
                    shape: OvalBorder(),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 56,
                top: 179,
                child: Text(
                  '150',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 330,
                top: 179,
                child: Text(
                  '190',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 192,
                top: 179,
                child: Text(
                  '160',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 191,
                top: 242,
                child: Text(
                  'Вес',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 56,
                top: 310,
                child: Container(
                  width: 300,
                  height: 8,
                  decoration: ShapeDecoration(
                    color: Color(0xFFC8C8C8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 56,
                top: 310,
                child: Container(
                  width: 131,
                  height: 8,
                  decoration: ShapeDecoration(
                    color: Color(0xFF4CAF50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                  ),
                ),
              ),
              Positioned(
                left: 176,
                top: 304,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: ShapeDecoration(
                    color: Color(0xFF4CAF50),
                    shape: OvalBorder(),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 60,
                top: 284,
                child: Text(
                  '45',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 330,
                top: 284,
                child: Text(
                  '130',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 196,
                top: 284,
                child: Text(
                  '75',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 172,
                top: 353,
                child: Text(
                  'Возраст',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 55,
                top: 421,
                child: Container(
                  width: 300,
                  height: 8,
                  decoration: ShapeDecoration(
                    color: Color(0xFFC8C8C8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 55,
                top: 421,
                child: Container(
                  width: 114,
                  height: 8,
                  decoration: ShapeDecoration(
                    color: Color(0xFF4CAF50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                  ),
                ),
              ),
              Positioned(
                left: 156,
                top: 415,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: ShapeDecoration(
                    color: Color(0xFF4CAF50),
                    shape: OvalBorder(),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 58,
                top: 478,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: ShapeDecoration(
                    color: Color(0xFF4CAF50),
                    shape: OvalBorder(),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 55,
                top: 475,
                child: Container(
                  width: 26,
                  height: 26,
                  decoration: ShapeDecoration(
                    shape: OvalBorder(
                      side: BorderSide(width: 1, color: Color(0xFF4CAF50)),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 60,
                top: 395,
                child: Text(
                  '16',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 333,
                top: 395,
                child: Text(
                  '75',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 194,
                top: 395,
                child: Text(
                  '40',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 88,
                top: 480,
                child: Text(
                  'Мужчина',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 257,
                top: 478,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: ShapeDecoration(
                    shape: OvalBorder(),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 254,
                top: 475,
                child: Container(
                  width: 26,
                  height: 26,
                  decoration: ShapeDecoration(
                    shape: OvalBorder(
                      side: BorderSide(width: 1, color: Color(0xFF4CAF50)),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 285,
                top: 480,
                child: Text(
                  'Женщина',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 56,
                top: 572,
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
                left: 180,
                top: 586,
                child: Text(
                  'Далее',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 31,
                top: 124,
                child: Container(
                  width: 349,
                  height: 424,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFF4CAF50)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 412,
          height: 917,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 115,
                top: 70,
                child: Text(
                  'Какая ваша цель?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 48,
                top: 178,
                child: Container(
                  width: 140,
                  height: 100,
                  decoration: ShapeDecoration(
                    color: Color(0xFF4CAF50),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFF4CAF50)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 224,
                top: 178,
                child: Container(
                  width: 140,
                  height: 100,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFF4CAF50)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 136,
                top: 323,
                child: Container(
                  width: 140,
                  height: 100,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFF4CAF50)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 79,
                top: 220,
                child: Text(
                  'Похудение',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 247,
                top: 220,
                child: Text(
                  'Набор массы',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 156,
                top: 365,
                child: Text(
                  'Поддержание',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 56,
                top: 572,
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
                left: 180,
                top: 586,
                child: Text(
                  'Далее',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 412,
          height: 917,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 29,
                top: 70,
                child: Text(
                  'У вас есть ограничения в питании?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 56,
                top: 174,
                child: Container(
                  width: 300,
                  height: 206,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFF4CAF50)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 72,
                top: 290,
                child: Text(
                  'Другое:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 72,
                top: 191,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFF4CAF50)),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 72,
                top: 224,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: ShapeDecoration(
                    color: Color(0xFF4CAF50),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFF4CAF50)),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 72,
                top: 257,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFF4CAF50)),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 108,
                top: 191,
                child: Text(
                  'диабет',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 109,
                top: 224,
                child: Text(
                  'целиакия',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 108,
                top: 257,
                child: Text(
                  'непереносимость лактозы',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 76,
                top: 233,
                child: Transform(
                  transform: Matrix4.identity()
                    ..translate(0.0, 0.0)
                    ..rotateZ(0.98),
                  child: Container(
                    width: 7.21,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 2,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 72,
                top: 320,
                child: Container(
                  width: 268,
                  height: 44,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFC8C8C8)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 56,
                top: 576,
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
                left: 177,
                top: 590,
                child: Text(
                  'Готово',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 412,
          height: 917,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 100,
                top: 55,
                child: Text(
                  'Доброе утро, Софья!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 46,
                top: 208,
                child: Container(
                  width: 320,
                  height: 120,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFC8C8C8)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 63,
                top: 240,
                child: Text(
                  'Белки: 30,2г\nЖиры: 20,1г\nУглеводы: 50г',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 247,
                top: 217,
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: ShapeDecoration(
                    color: Color(0xFFE4973F),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 247,
                top: 217,
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: ShapeDecoration(
                    color: Color(0xFF73C142),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 247,
                top: 217,
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: ShapeDecoration(
                    color: Color(0xFF6277E2),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 302,
                top: 307,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(color: Color(0xFFE4973F)),
                ),
              ),
              Positioned(
                left: 206,
                top: 307,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(color: Color(0xFF6277E2)),
                ),
              ),
              Positioned(
                left: 254,
                top: 307,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(color: Color(0xFF73C142)),
                ),
              ),
              Positioned(
                left: 317,
                top: 305,
                child: Text(
                  'Углеводы',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 220,
                top: 305,
                child: Text(
                  'Белки',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 269,
                top: 305,
                child: Text(
                  'Жиры',
                  style: TextStyle(
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
                child: Container(
                  width: 155,
                  height: 49,
                  decoration: ShapeDecoration(
                    color: Color(0xFF4CAF50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
              Positioned(
                left: 83,
                top: 385,
                child: SizedBox(
                  width: 82,
                  height: 21,
                  child: Text(
                    'Дневник',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Open Sans',
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 211,
                top: 371,
                child: Container(
                  width: 155,
                  height: 49,
                  decoration: ShapeDecoration(
                    color: Color(0xFF4CAF50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
              Positioned(
                left: 255,
                top: 385,
                child: SizedBox(
                  width: 67,
                  height: 21,
                  child: Text(
                    'Рацион',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Open Sans',
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 363,
                top: 47,
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://picsum.photos/35/35"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 46,
                top: 472,
                child: Container(
                  width: 320,
                  height: 191,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFC8C8C8)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 63,
                top: 485,
                child: Text(
                  'Обед:',
                  style: TextStyle(
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
                left: 168,
                top: 734,
                child: Text(
                  'Прогресс',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 412,
          height: 917,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 141,
                top: 48,
                child: Text(
                  'Ваш рацион',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 46,
                top: 400,
                child: Container(
                  width: 320,
                  height: 191,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFC8C8C8)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 57,
                top: 414,
                child: Text(
                  'Обед:',
                  style: TextStyle(
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
                  width: 320,
                  height: 191,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFC8C8C8)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 62,
                top: 113,
                child: Text(
                  'Завтрак:',
                  style: TextStyle(
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
                  width: 320,
                  height: 191,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFC8C8C8)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 62,
                top: 714,
                child: Text(
                  'Ужин:',
                  style: TextStyle(
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
                  width: 320,
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
                  width: 320,
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
        Container(
          width: 412,
          height: 917,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 160,
                top: 53,
                child: Text(
                  'Дневник',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
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
                  width: 320,
                  height: 191,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFC8C8C8)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 66,
                top: 334,
                child: Text(
                  'Обед:',
                  style: TextStyle(
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
                  width: 320,
                  height: 191,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFC8C8C8)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 65,
                top: 118,
                child: Text(
                  'Завтрак:',
                  style: TextStyle(
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
                  width: 320,
                  height: 191,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFC8C8C8)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 62,
                top: 550,
                child: Text(
                  'Ужин:',
                  style: TextStyle(
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
                child: Container(
                  width: 110,
                  height: 73,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://picsum.photos/110/73"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
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
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
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
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
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
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
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
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
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
        Container(
          width: 412,
          height: 917,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 159,
                top: 20,
                child: Text(
                  'Прогресс',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Open Sans',
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 33,
                top: 73,
                child: Container(
                  width: 348,
                  height: 329,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://picsum.photos/348/329"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 28,
                top: 417,
                child: Container(
                  width: 358,
                  height: 456,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://picsum.photos/358/456"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
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
    );
  }
}
