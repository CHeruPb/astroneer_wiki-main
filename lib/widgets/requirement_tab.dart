import 'package:flutter/material.dart';

class RequirementTab extends StatelessWidget {
  /// Заголовок вкладки, например, "ТРЕБУЕТСЯ"
  final String title; 

  /// Основное содержимое: список виджетов (текст, изображения и т.п.)
  final List<Widget> children;

  const RequirementTab({
    Key? key,
    this.title = 'ТРЕБУЕТСЯ',
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF0033A0), // темно-синий фон
        border: Border.all(
          color: Colors.lightBlueAccent, // яркая рамка
          width: 2,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Заголовок вкладки
          Container(
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
            decoration: BoxDecoration(
              color: Color(0xFF004CFF), // синий фон заголовка
              borderRadius: BorderRadius.vertical(top: Radius.circular(6)),
            ),
            child: Text(
              title.toUpperCase(),
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
                letterSpacing: 1.2,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          // Содержимое вкладки
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}