import 'package:flutter/material.dart';

class MorePage extends StatefulWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  int selectedContainerIndex = -1;

  // List of labels for containers
  List<String> labels = [
    'About Us',
    'F.A.Q.',
    'Terms & Condition',
    'Like the app? Rate us on the Google Play Store',
    'Licenses',
    'Settings',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            // Create 6 containers with labels
            for (int i = 0; i < labels.length; i++)
              GestureDetector(
                onTap: () {
                  // Set the selected container index when tapped
                  setState(() {
                    selectedContainerIndex = i;
                  });
                },
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16.0),
                  margin: const EdgeInsets.all(8.0),
                  color: selectedContainerIndex == i
                      ? Colors.grey[300] // Light grey for selected container
                      : Colors.white, // White for other containers
                  child: Text(
                    labels[i],
                    style: const TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            const SizedBox(height: 8.0), // Adjust the spacing
            // Display text and icon in partnership with Mastercard in a light grey container
            Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.white60, // Light grey background
              height: 170.0, // Increase the height as needed
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'In partnership with Mastercard',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 16.0), // Adjust the spacing
                  // Add the icon below the text
                  Image.asset(
                    'assets/master.webp',
                    width: 50, // Adjust the width as needed
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
