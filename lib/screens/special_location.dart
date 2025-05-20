import 'package:flutter/material.dart';
import 'package:project/widgets/models.dart';
import '../widgets/requirement_tab.dart';

class SpecialLocationPage extends StatelessWidget {
  final SpecialLocation location;

  const SpecialLocationPage({required this.location, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(location.name, style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Color(0xffd703cf),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            RequirementTab(
              title: location.name,
              children: [
                ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                location.image,
              ),
            ),
              ],
            ),
            
            const SizedBox(height: 16),

            RequirementTab(
              title: 'ОПИСАНИЕ',
              children: [
                Text(
                  location.description,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
            const SizedBox(height: 12),

            RequirementTab(
              title: 'КАК НАЙТИ',
              children: [
                Text(
                  location.howToFind,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
            const SizedBox(height: 12),

            RequirementTab(
              title: 'ТРЕБУЕТСЯ',
              children:
                  location.requirements
                      .map(
                        (req) => Padding(
                          padding: const EdgeInsets.only(bottom: 6),
                          child: Text(
                            '- $req',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                      .toList(),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
