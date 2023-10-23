import 'package:flutter/material.dart';

class SavedPage extends StatefulWidget {
  @override
  _SavedPageState createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {
  bool isListSelected = true; // Initially, List is selected

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Container(
            height: 50, // Set the height of the buttons container
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isListSelected = true;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: isListSelected
                                ? Colors.red
                                : Colors.transparent,
                            width: 2.0,
                          ),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "LIST",
                          style: TextStyle(
                            color:
                            isListSelected ? Colors.red : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isListSelected = false;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: !isListSelected
                                ? Colors.red
                                : Colors.transparent,
                            width: 2.0,
                          ),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "ITINERARIES",
                          style: TextStyle(
                            color:
                            !isListSelected ? Colors.red : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20), // Add a gap between the buttons and the red container
          Container(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: Container(
                width: 350, // Adjust the width as needed
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.red, // Customize the background color
                  borderRadius: BorderRadius.circular(5), // Slightly round the edges
                ),
                child: const Center(
                  child: Text(
                    "Create a new list",
                    style: TextStyle(
                      color: Colors.white, // Text color
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
