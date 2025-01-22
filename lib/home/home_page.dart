import 'package:flutter/material.dart';
import 'package:storemart/widgets/header.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: ListView(
        children: [
          _buildSearchBar(),
          _buildBannerCarousel(),
          _buildCategoryShortcuts(),
          _buildFeaturedProducts(),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search for products...',
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey),
          ),
          filled: true,
          fillColor: Colors.grey[200],
        ),
      ),
    );
  }

  Widget _buildBannerCarousel() {
    final List<String> bannerImages = [
      'assets/images/banners/banner1.jpg',
      'assets/images/banners/banner2.jpg',
      'assets/images/banners/banner3.jpg',
      'assets/images/banners/banner4.jpg',
      'assets/images/banners/banner5.jpg',
    ];

    return Container(
      height: 200,
      margin: EdgeInsets.symmetric(vertical: 16),
      child: PageView.builder(
        itemCount: bannerImages.length,
        itemBuilder: (context, index) {
          return _buildBanner(bannerImages[index]);
        },
      ),
    );
  }

  Widget _buildBanner(String imagePath) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 8,
            offset: Offset(0, 4), // Position of the shadow
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
            // Optional: Add gradient overlay for text readability
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black.withOpacity(0.3), Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            // Add text on top of the banner if needed
            Positioned(
              bottom: 16,
              left: 16,
              child: Text(
                'Shop Now!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(color: Colors.black.withOpacity(0.5), blurRadius: 4),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryShortcuts() {
    final categories = [
      {'icon': Icons.smartphone, 'label': 'Electronics'},
      {'icon': Icons.local_grocery_store, 'label': 'Groceries'},
      {'icon': Icons.chair, 'label': 'Furniture'},
      {'icon': Icons.book, 'label': 'Books'},
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: categories.map((category) {
          return Column(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blue[100],
                child: Icon(
                  category['icon'] as IconData,
                  size: 30,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 8),
              Text(
                category['label'] as String,
                style: TextStyle(fontSize: 14),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }

  Widget _buildFeaturedProducts() {
    final products = [
      {
        'name': 'Smartphone',
        'price': '\$799',
        'image': 'assets/images/products/smartphone.jpg'
      },
      {
        'name': 'Headphones',
        'price': '\$199',
        'image': 'assets/images/products/headphone.jpg'
      },
      {
        'name': 'Shoes',
        'price': '\$129',
        'image': 'assets/images/products/shoes.jpg'
      },
      {
        'name': 'Laptop',
        'price': '\$999',
        'image': 'assets/images/products/laptop.jpg'
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Featured Products',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 0.75,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return _buildProductCard(
                product['name'] as String,
                product['price'] as String,
                product['image'] as String,
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildProductCard(String name, String price, String imagePath) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.asset(imagePath, fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              name,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              price,
              style: TextStyle(fontSize: 11, color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}
