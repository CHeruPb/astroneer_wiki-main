import 'package:flutter/material.dart';
import 'package:project/widgets/ingredients_list.dart';
import '../widgets/models.dart';
import '../widgets/requirement_tab.dart';

class PlanetDetailPage extends StatelessWidget {
  final Planet planet;

  const PlanetDetailPage({Key? key, required this.planet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(planet.name, style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Color(0xffd703cf),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RequirementTab(
              title: planet.name,
              children: [
                Center(
                  child: Column(
                    children: [
                      Image.asset(planet.image, width: 250, height: 250),
                      SizedBox(height: 8),
                      Center(
                        child: Text(
                          textAlign: TextAlign.justify,
                          planet.description,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 16),

            RequirementTab(
              title: 'Основная информация',
              children: [
                Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Тип: ${planet.type}',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Сложность: ${planet.difficulty}',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Размер: ${planet.scale}",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Длина дня: ${planet.dayLength}',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Солнце: ${planet.sun}',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Ветер: ${planet.wind}',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Требуемая энергия: ${planet.powerRequired}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 16),

            RequirementTab(
              title: 'Ресурсы',
              children: [
                Center(
                  child: Column(
                    children: [
                      Text(
                        "Основные ресурсы:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      IngredientsList(ingredients: planet.mainResourse),

                      SizedBox(height: 16),

                      Text(
                        "Вторичные ресурсы:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      IngredientsList(ingredients: planet.secondaryResourse),
                      SizedBox(height: 16),
                      Text(
                        "Газы:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      IngredientsList(ingredients: planet.gases),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            RequirementTab(
              title: 'Врата и ядро',
              children: [
                Center(
                  child: Column(
                    children: [
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Ресурс ядра:",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: 8),

                            Image.asset(
                              planet.gatewayResouce.iconPath,
                              width: 32,
                              height: 32,
                              errorBuilder:
                                  (_, __, ___) => Icon(Icons.error, size: 24),
                            ),
                            const SizedBox(width: 8),
                            Text(planet.gatewayResouce.name),
                          ],
                        ),
                      ),

                      SizedBox(height: 16),
                      Text(
                        "Иконка ядра",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 16),
                      Image.asset(planet.gatewayImage, width: 250, height: 250),
                      SizedBox(height: 16),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
