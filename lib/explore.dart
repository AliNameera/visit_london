import 'package:flutter/material.dart';
import 'package:vist_london/More.dart';
import 'package:vist_london/categories.dart';
import 'package:vist_london/saved.dart';
import 'package:vist_london/transport.dart';
class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  int _currentIndex = 0;

  // Create a list of pages to navigate to
  final List<Widget> _pages = [
    const ExploreCategories(),
    CategoryPage(),
    SavedPage(),
    const TransportPage(),
    const MorePage(),
  ];

  // Define AppBar actions for different pages
  List<Widget> _getAppBarActions(int currentIndex) {
    if (currentIndex == 2) {
      // Display a download icon on the Saved page
      return [
        IconButton(
          icon: const Icon(Icons.search, color: Colors.white),
          onPressed: () {
            // Handle search action
          },
        ),
        IconButton(
          icon: const Icon(Icons.file_download, color: Colors.white),
          onPressed: () {
            // Handle download action
          },
        ),
      ];
    } else if (currentIndex == 3) {
      // Display "Tube status" text on the Transport page
      return [
        const Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: EdgeInsets.only(bottom: 16.0, right: 16.0),
            child: Text(
              'Tube status',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ];
    }
    // Default: Display search icon on all other pages
    return [
      IconButton(
        icon: const Icon(Icons.search, color: Colors.white),
        onPressed: () {
          // Handle search action
        },
      ),
    ];
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Visit London', style: TextStyle(color: Colors.white)),
        actions: _getAppBarActions(_currentIndex),
      ),
      body: _pages[_currentIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update the selected index
          });
        },
        selectedItemColor: Colors.red, // Selected item color (Active tab)
        unselectedItemColor: Colors.grey, // Unselected item color (Inactive tabs)
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_bus),
            label: 'Transport',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_vert),
            label: 'More',
          ),
        ],
      ),
    );
  }
}

class ExploreCategories extends StatelessWidget {
  const ExploreCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      // Remove Expanded widget
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      shrinkWrap: true, // Add shrinkWrap to constrain the height
      children: const [
        ExploreCategoryCard(
          title: 'Hot things to do in August',
          image: 'assets/10.jpg',
        ),
        ExploreCategoryCard(
          title: 'Best Royal Attraction',
          image: 'assets/20.jpeg',
        ),
        ExploreCategoryCard(
          title: 'Unforgettable Priceless Experiences',
          image: 'assets/30.jpg',
        ),
        ExploreCategoryCard(
          title: 'Famous London Attraction',
          image: 'assets/40.jpg',
        ),
        ExploreCategoryCard(
          title: "Harry Potter's London",
          image: 'assets/50.jpg',
        ),
      ],
    );
  }
}

class ExploreCategoryCard extends StatelessWidget {
  final String title;
  final String image;

  const ExploreCategoryCard({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200.0, // Set a fixed height for the image
              errorBuilder: (context, error, stackTrace) {
                return const Center(child: Icon(Icons.error));
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

