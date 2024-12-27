import 'package:flutter/material.dart';
import 'purpose.dart';

class SettingProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Настройки профиля'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Text(
              'Расскажите о себе',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            SliderInput(label: "Рост", min: 150, max: 200),
            SliderInput(label: "Вес", min: 40, max: 120),
            SliderInput(label: "Возраст", min: 16, max: 80),
            RadioButtonExample(),
            SizedBox(height: 20),
            Positioned(
                left: 56,
                top: 572,
                child: SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Purpose()),);
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
    );
  }
}

class SliderInput extends StatefulWidget {
  final String label;
  final double min;
  final double max;

  SliderInput({required this.label, required this.min, required this.max});

  @override
  _SliderInputState createState() => _SliderInputState();
}

class _SliderInputState extends State<SliderInput> {
  double _currentValue = 0;
  @override
  void initState() {
    super.initState();
    _currentValue = (widget.min + widget.max) / 2; // Значение по умолчанию
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("${widget.label}: ${_currentValue.toStringAsFixed(1)}"),
        Slider(
          value: _currentValue,
          min: widget.min,
          max: widget.max,
          divisions: (widget.max - widget.min).toInt(),
          activeColor: Color(0xFF4CAF50),
          inactiveColor: Color.fromARGB(78, 76, 175, 79) ,
          
          onChanged: (value) {
            setState(() {
              _currentValue = value;
            });
          },
        ),
       
      ],
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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Positioned(
          left: 88,
          child: Text('Выберите пол:',
            style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Open Sans',
                    height: 0,),
        ),),
        Row(
          children: [
            Radio<int>(
              value: 0,  // Мужчина
              groupValue: _selectedValue,  // Текущее выбранное значение
              onChanged: _onChanged,  // Функция для обновления значения
              activeColor: Color(0xFF4C9650),
            ),
            Text('Мужчина'),
            Radio<int>(
              value: 1,  // Женщина
              groupValue: _selectedValue,  // Текущее выбранное значение
              onChanged: _onChanged,  // Функция для обновления значения
              activeColor: Color(0xFF4C9650),
            ),
            Text('Женщина'),
          ],
        ),
      ],
    );
  }
}