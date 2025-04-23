import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [_controlPanel(context), _recipeArea(context)]),
    );
  }

  Widget _controlPanel(context, {double width = 320}) {
    return Container(
      width: width,
      color: const Color.fromARGB(255, 193, 210, 218),
      child: Column(
        children: [
          Text('Receptsök', style: Theme.of(context).textTheme.headlineMedium),
          Text(
            'Hitta ett recept som passar genom att ändra inställningarna nedanför',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }

  Widget _recipeArea(context) {
    return Expanded(
      child: Container(
        color: const Color.fromARGB(255, 204, 216, 176),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: 0, // This will be replaced with actual recipe count
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: ListTile(
                      title: Text('Recipe ${index + 1}'),
                      subtitle: Text('Description of recipe ${index + 1}'),
                      onTap: () {
                        // Handle recipe selection
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _ingredientControl(context) {
    return IngredientControl();
  }
}
