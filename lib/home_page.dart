import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePageScreen extends StatefulWidget{
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState()=> _HomePageState();
}

class _HomePageState extends State<HomePageScreen>{
  final List<Map<String, dynamic>> items = [
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
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            child: AppBar(
              primary: true,
              backgroundColor: Colors.greenAccent,
              elevation: 0,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 44,
                    padding: EdgeInsets.fromLTRB(5,5,10,5),
                    decoration: BoxDecoration(
                      color: Color(0xFFF7F7F9),
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFFFDFE6),
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset("assets/images/home_icon.svg",width: 40,),
                        ),
                        SizedBox(width: 2,),
                        Text(
                          "Lenorado",
                          style: TextStyle(
                            fontFamily: "SUDisplay",
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            height: 16/14,
                            letterSpacing: 0
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: Color(0xFFF7F7F9).withOpacity(1),
                      shape: BoxShape.circle, // Circular shape
                    ),
                    child: IconButton(
                      icon: Icon(Icons.notifications_none,
                          color: Color(0xFF1B1E28),
                          size: 22
                      ), // Adjust icon size
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          )
      ),
      body: Container(
        width: screenWidth,
        height: screenHeight,
        color: Colors.blue,
        padding: EdgeInsets.fromLTRB(20,10,0,10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children:[
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Explore the\n",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 38,
                          fontWeight: FontWeight.w400,
                          fontFamily: "SUDisplay",
                          height: 50 / 38,
                        ),
                      ),
                      TextSpan(
                        text: "Beautiful ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 38,
                          fontWeight: FontWeight.w700,
                          fontFamily: "SUDisplay",
                          height: 50 / 38,
                        ),
                      ),
                      TextSpan(
                        text: "world!",
                        style: TextStyle(
                          color: Color(0xFFFF7029),
                          fontSize: 38,
                          fontWeight: FontWeight.w700,
                          fontFamily: "SUDisplay",
                          height: 50 / 38,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.start,
                ),
                Positioned(
                    top: screenHeight*0.12,
                    left: screenWidth*0.47,
                    child: SvgPicture.asset("assets/images/vector-2.svg")
                )
              ]
            ),
            SizedBox(height: 20,),
            Expanded(
                child: Container(
                  color: Colors.yellow,
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Best Destination",
                              style: TextStyle(
                                fontFamily: "SUDisplay",
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                height: 28/20,
                                letterSpacing: 0,
                                color: Color(0xFF1B1E28)
                              ),
                            ),
                            Text(
                              "View All",
                              style: TextStyle(
                                fontFamily: "SUDisplay",
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                                height: 16/14,
                                letterSpacing: 0,
                                color: Color(0xFF0D6EFD)
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 370,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: items.length,
                            itemBuilder: (context, index){
                              return Padding(
                                padding: const EdgeInsets.fromLTRB(0,0,10,0),
                                child: Container(
                                  width: 250,
                                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(24),
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
                                          color: Colors.white,
                                          child: Stack(
                                              children:[
                                                Image.asset(items[index]['img'],width: screenWidth,fit: BoxFit.fill,height: 280,),
                                                Positioned(
                                                  right: 0,
                                                  left: screenWidth*0.42,
                                                  top: screenHeight*0.035,
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
                                                      Icons.bookmark_border_outlined,
                                                      size: 20,
                                                      color: Color(0xFFFFFFFF),
                                                    ),
                                                  ),
                                                )
                                              ]
                                          ),
                                        ),
                                        Container(
                                          color: Colors.yellow,
                                          height: 60,
                                          padding: EdgeInsets.symmetric(vertical: 5),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    items[index]['name'],
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
                                                    children: [
                                                      Icon(Icons.star,color: Color(0xFFFFD336),size: 16,),
                                                      Text(
                                                        "4.7",
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
                                                  )
                                                ],
                                              ),
                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(Icons.location_on_outlined,color: Color(0xFF7D848D),size: 20),
                                                      Text(
                                                        items[index]['address'],
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
                                                  ),
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        width: 70,
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
                                                            ),
                                                            Positioned(
                                                                top: 0,
                                                                bottom: 0,
                                                                left: 45,
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
                                                    ],
                                                  )

                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                )
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 30,
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.elliptical(40,30),topRight: Radius.elliptical(40,30)),
            color: Colors.green,
          ),
        ),
      )
    );
  }
}