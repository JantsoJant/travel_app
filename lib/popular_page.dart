import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PopularPageScreen extends StatefulWidget{
  const PopularPageScreen({super.key});

  @override
  State<StatefulWidget> createState()=> _PopularPageState();
}

class _PopularPageState extends State<PopularPageScreen>{
  final List<Map<String, String>> items = [
    {"image": "assets/images/pop-1.png", "text": "Santorini Island", "price": "\$820", "date": "16 July-28 July"},
    {"image": "assets/images/pop-2.png", "text": "Bukita Rayandro", "price": "\$720", "date": "20 Sept-29 Sept"},
    {"image": "assets/images/pop-3.png", "text": "Cluster Omega", "price": "\$942", "date": "14 Nov-22 Nov"},
    {"image": "assets/images/pop-4.png", "text": "Shajek Bandorban", "price": "\$860", "date": "12 Dec-18 Dec"},
    {"image": "assets/images/pop-1.png", "text": "Santorini Island", "price": "\$820", "date": "16 July-28 July"},
    {"image": "assets/images/pop-2.png", "text": "Bukita Rayandro", "price": "\$720", "date": "20 Sept-29 Sept"},
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
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: AppBar(
              primary: true,
              backgroundColor: Colors.white,
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
                "Popular Package",
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
        width: screenHeight,
        height: screenHeight,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "All Popular Trip Packages",
              style: TextStyle(
                fontFamily: "SUDisplay",
                fontWeight: FontWeight.w400,
                fontSize: 20,
                height: 28 / 20,
                letterSpacing: 0,
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 10), // Adds padding on top & bottom
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: screenWidth, // Full width
                    height: 140, // Fixed height
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),// Space around containers
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16), // Rounded corners
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFB4BCC9).withOpacity(0.6),
                          blurStyle: BlurStyle.normal,
                          blurRadius: 8,
                          offset: const Offset(0, 6),
                          spreadRadius: 0,
                        )
                      ]
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Image Section
                        Container(
                          width: screenWidth*0.25, // Fixed image width
                          height: screenHeight, // Fixed image height
                          // padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(items[index]["image"]!), // Image from assets
                              fit: BoxFit.cover, // Covers the area
                            ),
                          ),
                        ),
                        // SizedBox(width: 15), // Space between image and text
                        // Text Section
                        // Text(
                        //   items[index]["text"]!,
                        //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        // ),
                        Container(
                          width: screenWidth*0.58,
                          height: screenHeight,
                          color: Colors.white,
                          padding: EdgeInsets.fromLTRB(10,10,0,10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    items[index]["text"]!,
                                    style: TextStyle(
                                      fontFamily: "SUDisplay",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      height: 20/16,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                  Container(
                                    width: 50,
                                    height: 28,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xFF0D6EFD),
                                    ),
                                    child: Text(
                                      items[index]["price"]!,
                                      style: TextStyle(
                                        fontFamily: "SUDisplay",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        height: 16/12,
                                        color: Colors.white,
                                        letterSpacing: 0.5
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    color: Color(0xFF7D848D),
                                    size: 20,
                                  ),
                                  SizedBox(width: 5,),
                                  Text(
                                    items[index]["date"]!,
                                    style: TextStyle(
                                        fontFamily: "SUDisplay",
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        height: 16/13,
                                        color: Color(0xFF7D848D),
                                        letterSpacing: 0.3
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Color(0xFFFFD336),size: 16,),
                                      Icon(Icons.star,color: Color(0xFFFFD336),size: 16,),
                                      Icon(Icons.star,color: Color(0xFFFFD336),size: 16,),
                                    ],
                                  ),
                                  SizedBox(width: 5,),
                                  Text(
                                    "4.3",
                                    style: TextStyle(
                                        fontFamily: "SUDisplay",
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        height: 16/13,
                                        color: Color(0xFF1B1E28),
                                        letterSpacing: 0.3
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 60,
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: 24, // Fixed image width
                                          height: 24, // Fixed image height
                                          decoration: BoxDecoration(
                                            color: Colors.redAccent,
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: AssetImage("assets/images/avatar-1.png"), // Image from assets
                                              fit: BoxFit.cover, // Covers the area
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 0,
                                          left: 15,
                                          bottom: 0,
                                          child: Container(
                                            width: 24, // Fixed image width
                                            height: 24, // Fixed image height
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                image: AssetImage("assets/images/avatar-2.png"), // Image from assets
                                                fit: BoxFit.cover, // Covers the area
                                              ),
                                            ),
                                              // child: Image(image: AssetImage("assets/images/pop-1.png"))
                                          )
                                        ),
                                        Positioned(
                                            top: 0,
                                            bottom: 0,
                                            left: 30,
                                            child: Container(
                                              width: 24, // Fixed image width
                                              height: 24, // Fixed image height
                                              decoration: BoxDecoration(
                                                // color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage("assets/images/avatar-3.png"), // Image from assets
                                                  fit: BoxFit.cover, // Covers the area
                                                ),
                                              ),
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "24 Person Joined",
                                    style: TextStyle(
                                      fontFamily: "SUDisplay",
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      height: 16/13,
                                      color: Color(0xFF7D848D),
                                      letterSpacing: 0.3
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}