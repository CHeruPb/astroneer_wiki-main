import 'package:flutter/material.dart';
import 'package:project/widgets/ingredients_list.dart';
import 'package:project/widgets/models.dart';
import 'package:project/widgets/requirement_tab.dart';

class ModulePage extends StatelessWidget {
  final CraftableModule module;

  const ModulePage({super.key, required this.module});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(module.name, style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Color(0xffd703cf),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Заголовок с иконкой
              RequirementTab(
                title: module.name,
                children: [
                  Center(
                    child: Column(
                      children: [
                        Image.asset(module.image),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              RequirementTab(
                title: 'Основная информация',
                children: [
                  Center(
                    child: Column(
                      children: [
                        Text('${module.description}'),
                        Text('Требуемый принтер: ${module.printerLevel}'),
                        Text('Категория: ${module.category}'),
                        Text('Стоимость разблокировки: ${module.byteCost}'),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              RequirementTab(
                title: 'Требуемые ресурсы',
                children: [IngredientsList(ingredients: module.ingredients)],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
