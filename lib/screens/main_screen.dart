import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_MenuItem> menuItems = [
      _MenuItem(
        title: 'Космические объекты',
        imagePath: 'assets/images/sylva.png',
        onTap: () => Navigator.pushNamed(context, '/planets'),
      ),
      _MenuItem(
        title: 'Ресурсы',
        imagePath: 'assets/images/copper.png',
        onTap: () => Navigator.pushNamed(context, '/resources'),
      ),
      _MenuItem(
        title: 'Модули и инструменты',
        imagePath: 'assets/images/vesania.png',
        onTap: () => Navigator.pushNamed(context, '/items'),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Добро пожаловать в Астропедию!',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xffd703cf),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 1,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                children:
                    menuItems.map((item) => item.toCard(context)).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MenuItem {
  final String title;
  final String imagePath;
  final VoidCallback onTap;

  _MenuItem({
    required this.title,
    required this.imagePath,
    required this.onTap,
  });

  Widget toCard(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Center(
              child: Image.asset(imagePath, fit: BoxFit.cover, width: 256),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.lightBlueAccent, width: 2),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
