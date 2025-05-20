import 'package:flutter/material.dart';
import 'package:project/widgets/models.dart';

class IngredientsList extends StatelessWidget {
  final List<Ingredient> ingredients;

  const IngredientsList({super.key, required this.ingredients});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // выравнивание по левому краю
      children: ingredients.map((ingredient) => _buildIngredientItem(ingredient)).toList(),
    );
  }

  Widget _buildIngredientItem(Ingredient ingredient) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8), // отступ между элементами
      child: Row(
        children: [
          Image.asset(
            ingredient.iconPath,
            width: 32,
            height: 32,
            errorBuilder: (_, __, ___) => Icon(Icons.error, size: 24),
          ),
          const SizedBox(width: 8),
          Text(ingredient.name),
        ],
      ),
    );
  }
}