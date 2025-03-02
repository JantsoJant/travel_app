
import 'package:flutter/material.dart';

class FavouritePageScreen extends StatefulWidget{
  const FavouritePageScreen({super.key});

  @override
  State<FavouritePageScreen> createState()=> _FavouritePageScreen();
}

class _FavouritePageScreen extends State<FavouritePageScreen>{
  final List<Map<String, dynamic>> categories = [
    {"name": "Niladri Reservoir","address": "Tekergat, Sunamgnj", "img": "assets/images/favt-1.png",},
    {"name": "Casa Las Tirtugas","address": "Av Damero, Maxico", "img": "assets/images/favt-2.png",},
    {"name": "Aonang Villa Resort","address": "Bastola, Islampur", "img": "assets/images/favt-3.png",},
    {"name": "Rangauti Resort","address": "Sylhet, Airport Road", "img": "assets/images/favt-4.png",},
    {"name": "Kachura Resort","address": "Vellima, Island", "img": "assets/images/favt-5.png",},
    {"name": "Shakardu Resort","address": "Shakartu, Pakistan", "img": "assets/images/favt-6.png",},
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
            backgroundColor: Colors.white,
            primary: true,
            elevation: 0,
            leading: Container(
              margin: EdgeInsets.all(8), // Adjusts spacing
              decoration: BoxDecoration(
                color: Color(0xFFF7F7F9).withOpacity(1),
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
        color: Colors.white,
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
            const SizedBox(height: 15),
            Expanded(
              child: GridView.builder(
                itemCount: categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 boxes per row
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(9),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFB4BCC9).withOpacity(0.6),
                          blurStyle: BlurStyle.normal,
                          blurRadius: 8,
                          offset: const Offset(0, 6),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: screenWidth,
                            // height: screenHeight*0.3,
                            color: Colors.white,
                            child: Stack(
                                children:[
                                  Image.asset(categories[index]['img'],width: screenWidth,fit: BoxFit.fill,),
                                  Positioned(
                                    right: 0,
                                    left: screenWidth*0.26,
                                    top: screenHeight*0.018,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.white.withOpacity(0.5),
                                            blurRadius: 30,
                                            blurStyle: BlurStyle.solid
                                          )
                                        ]
                                      ),
                                      child: Icon(
                                        Icons.favorite_border,
                                        size: 20,
                                        color: Color(0xFFFE2352),
                                      ),
                                    ),
                                  )
                                ]
                            ),
                          ),
                          Container(
                            color: Colors.white,
                            height: 40,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  categories[index]['name'],
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: "SUDisplay",
                                    fontWeight: FontWeight.w700,
                                    height: 16/14,
                                    letterSpacing: 0.5,
                                    color: Color(0xFF1B1E28),
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.location_on_outlined,color: Color(0xFF7D848D),size: 20),
                                    Text(
                                      categories[index]['address'],
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: "SUDisplay",
                                        fontWeight: FontWeight.w300,
                                        height: 16/12,
                                        letterSpacing: 0.3,
                                        color: Color(0xFF7D848D)
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
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