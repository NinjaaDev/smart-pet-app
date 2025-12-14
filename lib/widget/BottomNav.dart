import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemSelected;

  CustomBottomNavBar({
    required this.selectedIndex,
    required this.onItemSelected,
  });

  final List<IconData> _icons = [
    Icons.home,
    Icons.bookmark_border,
    Icons.location_on_outlined,
    Icons.person_outline_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0), // spacing from bottom
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        margin: const EdgeInsets.symmetric(horizontal: 40),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, // Add space between items
          children: List.generate(_icons.length, (index) {
            bool isSelected = selectedIndex == index;
            return GestureDetector(
              onTap: () => onItemSelected(index),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 200),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[300], // Grey background for all items
                  shape: BoxShape.circle,
                  border: isSelected
                      ? Border.all(color: Colors.purple, width: 2)
                      : null, // Highlight selected item with a border
                ),
                child: Icon(
                  _icons[index],
                  color: isSelected ? Colors.purple : Colors.black,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
