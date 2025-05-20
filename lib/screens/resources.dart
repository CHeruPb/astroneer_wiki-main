import 'package:flutter/material.dart';
import 'package:project/screens/resource_page.dart';
import 'package:project/widgets/models.dart';

class ResourcesScreen extends StatelessWidget {
  final List<Resource> resources;

  const ResourcesScreen({super.key, required this.resources});

  @override
  Widget build(BuildContext context) {
    // Известные категории
    const knownCategories = ['Природный', 'Переплавленный', 'Сложный', 'Газ'];

    // Группировка
    final Map<String, List<Resource>> grouped = {
      'Природный': [],
      'Переплавленный': [],
      'Сложный': [],
      'Газы': [],
      'Прочие ресурсы': [],
    };

    for (var res in resources) {
      final category = res.category;
      if (category == 'Газ') {
        grouped['Газы']!.add(res);
      } else if (knownCategories.contains(category)) {
        grouped[category]!.add(res);
      } else {
        grouped['Прочие ресурсы']!.add(res);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ресурсы', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xffd703cf),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
      ),
      backgroundColor: Color(0xff0050e7),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: grouped.entries
              .where((entry) => entry.value.isNotEmpty) // не отображать пустые группы
              .map((entry) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    entry.key.toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: entry.value.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (context, index) {
                    final resource = entry.value[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => ResourceDetailPage(resource: resource),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.lightBlueAccent, width: 2),
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
                                resource.image,
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
                              resource.name,
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
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
