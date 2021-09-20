import 'package:flutter/material.dart';
import 'package:quick_recipes/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget _buildDrawerTile({
    String title,
    IconData icon,
    VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, size: 26),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: "RobotoCondensed",
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              "Cooking Up!",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          const SizedBox(height: 20),
          _buildDrawerTile(
            title: "Meals",
            icon: Icons.restaurant,
            onTap: () => Navigator.of(context).pushReplacementNamed("/"),
          ),
          const SizedBox(height: 20),
          _buildDrawerTile(
            title: "Settings",
            icon: Icons.settings,
            onTap: () => Navigator.of(context).pushReplacementNamed(
              FiltersScreen.routeName,
            ),
          ),
        ],
      ),
    );
  }
}
