import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  final List<Category> categories = [
    Category(icon: Icons.smartphone, name: 'Electronics'),
    Category(icon: Icons.local_grocery_store, name: 'Groceries'),
    Category(icon: Icons.chair, name: 'Furniture'),
    Category(icon: Icons.book, name: 'Books'),
    Category(icon: Icons.sports_soccer, name: 'Sports'),
    Category(icon: Icons.local_offer, name: 'Fashion'),
    Category(icon: Icons.healing, name: 'Health & Beauty'),
    Category(icon: Icons.toys, name: 'Toys'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: categories.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemBuilder: (context, index) {
            final category = categories[index];
            return CategoryCard(
              category: category,
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${category.name} selected')),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class Category {
  final IconData icon;
  final String name;

  Category({required this.icon, required this.name});
}

class CategoryCard extends StatelessWidget {
  final Category category;
  final VoidCallback onTap;

  const CategoryCard({Key? key, required this.category, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.blue, width: 1.5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              category.icon,
              size: 40,
              color: Colors.blue,
            ),
            SizedBox(height: 8),
            Text(
              category.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blue[900],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
