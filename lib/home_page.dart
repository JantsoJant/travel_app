import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePageScreen extends StatefulWidget{
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState()=> _HomePageScreen();
}

class _HomePageScreen extends State<HomePageScreen>{
  final List<Map<String, dynamic>> categories = [
    {"name": "Friendship", "img": "images/friendship.png",},
    {"name": "Currency USD", "img": "images/currency.png",},
    {"name": "Temperature", "img": "images/temperature.png",},
    {"name": "BMI", "img": "images/bmi.png",},
    // {"name": "Length", "img": "images/length.png",},
    // {"name": "Temperature", "img": "images/temperature.png",},
    // {"name": "Area", "img": "images/area.png",},
    // {"name": "Volume", "img": "images/volume.png",},
    // {"name": "Weight", "img": "images/weight.png",},
    // {"name": "Time Belgium", "img": "images/time.png",},
    // {"name": "Age", "img": "images/age.png",},
    // {"name": "Currency Pound", "img": "images/currency.png",},
    // {"name": "Time", "img": "images/time.png",},
  ];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: AppBar(
            backgroundColor: Colors.blue,
            elevation: 0,
            leading: Container(
              margin: EdgeInsets.all(8), // Adjusts spacing
              decoration: BoxDecoration(
                color: Colors.grey.shade300, // Background color
                shape: BoxShape.circle, // Circular shape
              ),
              child: IconButton(
                icon: Icon(Icons.chevron_left,
                    color: Color(0xFF1B1E28),
                    size: 20
                ), // Adjust icon size
                onPressed: () {},
              ),
            ),
            title: Text(
              "Favourite Places",
              style: TextStyle(
                fontFamily: "SUDisplay",
                fontWeight: FontWeight.w400,
                fontSize: 18,
                height: 22/18,
                letterSpacing: 0
              ),
            ),
            centerTitle: true,
          ),
        ),
      ),
      body: Container(
        color: Colors.greenAccent,
        width: screenWidth,
        height: screenHeight,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Favourite Places",
              style: TextStyle(
                fontFamily: "SUDisplay",
                fontWeight: FontWeight.w400,
                fontSize: 20,
                height: 28 / 20,
                letterSpacing: 0,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                itemCount: categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 3 boxes per row
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 4,
                          offset: const Offset(2, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Image.asset(categories[index]['img'], width: 40, height: 40),
                        const SizedBox(height: 8),
                        Text(
                          categories[index]['name'],
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
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
}