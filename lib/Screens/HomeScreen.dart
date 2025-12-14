import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pet/widget/BottomNav.dart';
import '../widget/Petcard.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedCategoryIndex = 0; // Track the selected category
  int selectedBottomNavIndex = 0; // Track the selected bottom navigation item

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Profile + Location

                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/appP.png'),
                        radius: 20,
                      ),
                      const SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 38.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              "Location",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                  fontFamily: 'Poppins'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Chicago, Us",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins'),
                                ),
                                Icon(Icons.keyboard_arrow_down),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),

                  // Notification icon
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications_none),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Search Bar
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search, color: Colors.grey),
                    const SizedBox(width: 8),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.tune),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Categories
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Categories",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w600)),
                  Text("See All",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          color: Colors.purple)),
                ],
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoryItem(
                      image: 'assets/images/dog1.png',
                      label: 'Dogs',
                      isSelected: selectedCategoryIndex == 0,
                      onTap: () {
                        setState(() {
                          selectedCategoryIndex = 0;
                        });
                      },
                    ),
                    CategoryItem(
                      image: 'assets/images/cats.png',
                      label: 'Cats',
                      isSelected: selectedCategoryIndex == 1,
                      onTap: () {
                        setState(() {
                          selectedCategoryIndex = 1;
                        });
                      },
                    ),
                    CategoryItem(
                      image: 'assets/images/Birds.png',
                      label: 'Birds',
                      isSelected: selectedCategoryIndex == 2,
                      onTap: () {
                        setState(() {
                          selectedCategoryIndex = 2;
                        });
                      },
                    ),
                    CategoryItem(
                      image: 'assets/images/fishes.png',
                      label: 'Fishes',
                      isSelected: selectedCategoryIndex == 3,
                      onTap: () {
                        setState(() {
                          selectedCategoryIndex = 3;
                        });
                      },
                    ),
                    CategoryItem(
                      image: 'assets/images/rabbits.png',
                      label: 'Rabbits',
                      isSelected: selectedCategoryIndex == 4,
                      onTap: () {
                        setState(() {
                          selectedCategoryIndex = 4;
                        });
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Pet Card
              SizedBox(
                height: 270, // Ensure the height is fixed to prevent overflow
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    final pets = [
                      PetCard(
                        name: "Golden Retriever",
                        distance: "Near 15km",
                        image: 'assets/images/dog1.png',
                        price: 1200.00, // Added price
                      ),
                      PetCard(
                        name: "Labrador Retriever",
                        distance: "Near 10km",
                        image: 'assets/images/dog2.jpg',
                        price: 1100.00, // Added price
                      ),
                      PetCard(
                        name: "Beagle",
                        distance: "Near 8km",
                        image: 'assets/images/dog3.jpg',
                        price: 1000.00, // Added price
                      ),
                      PetCard(
                        name: "Bulldog",
                        distance: "Near 12km",
                        image: 'assets/images/dog4.jpg',
                        price: 1300.00, // Added price
                      ),
                      PetCard(
                        name: "Poodle",
                        distance: "Near 5km",
                        image: 'assets/images/dog.png',
                        price: 1400.00, // Added price
                      ),
                    ];
                    return pets[index];
                  },
                ),
              ),
            ],
          ),
        ),
      ),

      // Updated to use the new CustomBottomNavBar
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: selectedBottomNavIndex,
        onItemSelected: (index) {
          setState(() {
            selectedBottomNavIndex = index;
          });
        },
      ),
    );
  }
}

// Updated CategoryItem to highlight the selected item with the primary color of the theme
class CategoryItem extends StatelessWidget {
  final String image;
  final String label;
  final bool isSelected; // Added isSelected property
  final VoidCallback onTap; // Added onTap callback

  const CategoryItem({
    super.key,
    required this.image,
    required this.label,
    this.isSelected = false, // Default to false
    required this.onTap, // Required onTap callback
  });

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    return GestureDetector(
      onTap: onTap, // Handle tap
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        child: Column(
          children: [
            CircleAvatar(
              radius: 26,
              backgroundColor: isSelected
                  ? primaryColor
                  : Colors.grey[200], // Highlight if selected
              backgroundImage: AssetImage(image),
            ),
            const SizedBox(height: 6),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: isSelected
                    ? primaryColor
                    : Colors.black, // Highlight text if selected
              ),
            ),
          ],
        ),
      ),
    );
  }
}
