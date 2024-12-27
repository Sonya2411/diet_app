import 'package:flutter/material.dart';
import 'dietary_rec.dart';

class Purpose extends StatelessWidget{
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Цель'),
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
              RadioButtonExample(),
              Positioned(
                left: 56,
                top: 370,
                child: SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Dietary_rec()),);
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF4CAF50),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    "Далее",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )
                )
                ),
                
              ),
            ],
          ),
        ),
      ],)
      )
      
    );
  }
}
class RadioButtonExample extends StatefulWidget {
  @override
  _RadioButtonExampleState createState() => _RadioButtonExampleState();
}

class _RadioButtonExampleState extends State<RadioButtonExample> {
  // Переменная для выбранного значения радиокнопки
  int? _selectedValue = 0;

  // Функция для изменения выбранного значения
  void _onChanged(int? newValue) {
    setState(() {
      _selectedValue = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: const EdgeInsets.all(20.0),
        child: Positioned(
                left: 115,
                top: 70,
                child: Text(
                  'Какая ваша цель?',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Inter',
                    height: 0,
                  ),
                ),
              ),),
            
            Row(
              children: [
                Radio<int>(
              value: 0,  // Мужчина
              groupValue: _selectedValue,  // Текущее выбранное значение
              onChanged: _onChanged,  // Функция для обновления значения
              activeColor: Color(0xFF4C9650),
            ),
            Text('Похудение'),
              ],
            ),
            Row(
              children: [
                 Radio<int>(
              value: 1,  // Женщина
              groupValue: _selectedValue,  // Текущее выбранное значение
              onChanged: _onChanged,  // Функция для обновления значения
              activeColor: Color(0xFF4C9650),
            ),
            Text('Поддержание веса'),
              ],
            ),
           Row(
            children: [
              Radio<int>(
              value: 2,  // Женщина
              groupValue: _selectedValue,  // Текущее выбранное значение
              onChanged: _onChanged,  // Функция для обновления значения
              activeColor: Color(0xFF4C9650),
            ),
            Text('Набор веса'),
            ],
           ),
            
          ],
        );
  }
}