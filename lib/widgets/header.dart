import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),// Solid color for the background (blue in this case)
      elevation: 4, // Adds shadow to the AppBar for a more lifted effect
      title: Padding(
        padding: const EdgeInsets.only(left: 16), // Adjust padding for the logo
        child: Image.asset(
          'assets/images/logo.png', // Path to your logo image
          height: 40, // Adjust size as needed
        ),
      ),
      centerTitle: false, // Align title to the left
      actions: [
        TextButton(
          onPressed: () {
            // Navigate to login page
            Navigator.pushNamed(context, '/login');
          },
          child: Row(
            mainAxisSize: MainAxisSize
                .min, // Ensures the Row takes only as much space as needed
            children: [
              Icon(
                Icons.login, // You can replace this with any icon you want
                color: Colors.black, // Icon color
                size: 20, // Icon size
              ),
              const SizedBox(
                  width: 8), // Adds space between the icon and the text
              const Text(
                'Login',
                style: TextStyle(
                  color: Colors.black, // Black text for the login button
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        IconButton(
          icon: const Icon(
            Icons.shopping_cart,
            color: Colors.black, // White cart icon for better visibility
            size: 30,
          ),
          onPressed: () {
            // Navigate to cart
          },
        ),
        SizedBox(
            width: 10), // Small space between the login button and cart icon
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
