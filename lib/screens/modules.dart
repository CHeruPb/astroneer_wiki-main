import 'package:flutter/material.dart';
import 'package:project/screens/modules_page.dart';
import 'package:project/widgets/models.dart';

class GameItemsScreen extends StatefulWidget {
  final List<CraftableModule> items;

  const GameItemsScreen({super.key, required this.items});

  @override
  State<GameItemsScreen> createState() => _GameItemsScreenState();
}

class _GameItemsScreenState extends State<GameItemsScreen> {
  String? selectedCategory;
  String? selectedPrinter;

  List<String> categories = [
    'Инструменты',
    'Транспорт',
    'Модули',
    'Дополнения',
    'Мощность',
  ];
  List<String> printers = ['Портативный', 'Маленький', 'Средний', 'Большой'];

  @override
  Widget build(BuildContext context) {
    List<CraftableModule> filtered =
        widget.items.where((item) {
          final byCategory =
              selectedCategory == null || item.category == selectedCategory;
          final byPrinter =
              selectedPrinter == null || item.printerLevel == selectedPrinter;
          return byCategory && byPrinter;
        }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Предметы', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: const Color(0xffd703cf),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () => _openFilterDialog(context),
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: filtered.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          final item = filtered[index];
          return GestureDetector(
            onTap: () {
              // Переход на страницу деталей:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ModulePage(module: item)),
              );
            },
            child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.lightBlueAccent,
                        width: 2,
                      ),
                      color: Color(0xff0050e7),
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: SizedBox(
                              height: 120,
                              width: 120,
                              child: Image.asset(
                                item.image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 6),
                            child: Text(
                              item.name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
          );
        },
      ),
    );
  }

  void _openFilterDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xff222222),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (_) {
        return StatefulBuilder(
          builder: (context, setSheetState) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Фильтры',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  const SizedBox(height: 12),
                  const Text('Категория'),
                  Wrap(
                    spacing: 8,
                    children:
                        categories.map((cat) {
                          final selected = cat == selectedCategory;
                          return FilterChip(
                            label: Text(cat),
                            selected: selected,
                            onSelected:
                                (_) => setSheetState(() {
                                  setState(() {
                                    selectedCategory = selected ? null : cat;
                                  });
                                }),
                          );
                        }).toList(),
                  ),
                  const SizedBox(height: 12),
                  const Text('Уровень принтера'),
                  Wrap(
                    spacing: 8,
                    children:
                        printers.map((p) {
                          final selected = p == selectedPrinter;
                          return FilterChip(
                            label: Text(p),
                            selected: selected,
                            onSelected:
                                (_) => setSheetState(() {
                                  setState(() {
                                    selectedPrinter = selected ? null : p;
                                  });
                                }),
                          );
                        }).toList(),
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedCategory = null;
                        selectedPrinter = null;
                      });
                      Navigator.pop(context);
                    },
                    child: const Text('Сбросить фильтры'),
                  
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
