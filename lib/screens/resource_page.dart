import 'package:flutter/material.dart';
import 'package:project/widgets/models.dart';
import '../widgets/requirement_tab.dart';

class ResourceDetailPage extends StatelessWidget {
  final Resource resource;

  const ResourceDetailPage({required this.resource, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(resource.name, style: TextStyle(color: Colors.white)),
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
              title: resource.name,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(resource.image),
                ),
              ],
            ),

            const SizedBox(height: 16),

            RequirementTab(
              title: 'ОПИСАНИЕ',
              children: [
                Text(
                  resource.description,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),

            const SizedBox(height: 16),

            RequirementTab(
              title: 'ПОЛУЧЕНИЕ',
              children: [
                Text(
                  resource.obtainedFrom,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),

            const SizedBox(height: 16),

            RequirementTab(
              title: 'Используется в',
              children:
                  resource.usedIn
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
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
