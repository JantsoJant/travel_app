import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SchedulePageScreen extends StatefulWidget{
  const SchedulePageScreen({super.key});

  @override
  State<SchedulePageScreen> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePageScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(75),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
            child: AppBar(
              primary: true,
              backgroundColor: Colors.greenAccent,
              elevation: 0,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFDFE6),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.chevron_left,
                            color: Color(0xFF1B1E28),
                            size: 20
                        )
                    )
                  ),
                  Text(
                    "Schedule",
                    style: TextStyle(
                      fontFamily: "SUDisplay",
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      height: 22/18,
                      letterSpacing: 0
                    ),
                  ),
                  Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      color: Color(0xFFF7F7F9).withOpacity(1),
                      shape: BoxShape.circle, // Circular shape
                    ),
                    child: IconButton(
                      icon: Icon(Icons.notification_add_outlined,
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
        height: screenHeight,
        width: screenWidth,
        color: Colors.yellow,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: screenWidth,
              height: 150,
              padding: EdgeInsets.fromLTRB(20,20,20,20),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(24)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "22 October",
                        style: TextStyle(
                          fontFamily: "SUDisplay",
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 28/20,
                          letterSpacing: 0
                        ),
                      ),
                      Container(
                        color: Colors.red,
                        width: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/images/back_vector.svg"),
                            SvgPicture.asset("assets/images/front_vector.svg",),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 40,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.red,
                        ),
                        padding: EdgeInsets.symmetric(vertical: 7),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "S",
                              style: TextStyle(
                                fontFamily: "SUDisplay",
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                height: 20/15,
                                letterSpacing: 0,
                                color: Color(0xFF7D848D)
                              ),
                            ),
                            Text(
                              "18",
                              style: TextStyle(
                                fontFamily: "SUDisplay",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                height: 20/16,
                                letterSpacing: 0,
                                color: Color(0xFF1B1E28)
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 70,
                        padding: EdgeInsets.symmetric(vertical: 7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.red,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "M",
                              style: TextStyle(
                                  fontFamily: "SUDisplay",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  height: 20/15,
                                  letterSpacing: 0,
                                  color: Color(0xFF7D848D)
                              ),
                            ),
                            Text(
                              "18",
                              style: TextStyle(
                                  fontFamily: "SUDisplay",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  height: 20/16,
                                  letterSpacing: 0,
                                  color: Color(0xFF1B1E28)
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.red,
                        ),
                        padding: EdgeInsets.symmetric(vertical: 7),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "T",
                              style: TextStyle(
                                  fontFamily: "SUDisplay",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  height: 20/15,
                                  letterSpacing: 0,
                                  color: Color(0xFF7D848D)
                              ),
                            ),
                            Text(
                              "18",
                              style: TextStyle(
                                  fontFamily: "SUDisplay",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  height: 20/16,
                                  letterSpacing: 0,
                                  color: Color(0xFF1B1E28)
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.red,
                        ),
                        padding: EdgeInsets.symmetric(vertical: 7),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "W",
                              style: TextStyle(
                                  fontFamily: "SUDisplay",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  height: 20/15,
                                  letterSpacing: 0,
                                  color: Color(0xFF7D848D)
                              ),
                            ),
                            Text(
                              "18",
                              style: TextStyle(
                                  fontFamily: "SUDisplay",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  height: 20/16,
                                  letterSpacing: 0,
                                  color: Color(0xFF1B1E28)
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xFF0D6EFD),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 7),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "T",
                              style: TextStyle(
                                  fontFamily: "SUDisplay",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  height: 20/15,
                                  letterSpacing: 0,
                                  color: Color(0xFFD0D9E7)
                              ),
                            ),
                            Text(
                              "18",
                              style: TextStyle(
                                  fontFamily: "SUDisplay",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  height: 20/16,
                                  letterSpacing: 0,
                                  color: Color(0xFFFFFFFF)
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.red,
                        ),
                        padding: EdgeInsets.symmetric(vertical: 7),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "F",
                              style: TextStyle(
                                  fontFamily: "SUDisplay",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  height: 20/15,
                                  letterSpacing: 0,
                                  color: Color(0xFF7D848D)
                              ),
                            ),
                            Text(
                              "18",
                              style: TextStyle(
                                  fontFamily: "SUDisplay",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  height: 20/16,
                                  letterSpacing: 0,
                                  color: Color(0xFF1B1E28)
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.red,
                        ),
                        padding: EdgeInsets.symmetric(vertical: 7),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "S",
                              style: TextStyle(
                                  fontFamily: "SUDisplay",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  height: 20/15,
                                  letterSpacing: 0,
                                  color: Color(0xFF7D848D)
                              ),
                            ),
                            Text(
                              "18",
                              style: TextStyle(
                                  fontFamily: "SUDisplay",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  height: 20/16,
                                  letterSpacing: 0,
                                  color: Color(0xFF1B1E28)
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: screenWidth,
              height: screenHeight,
              color: Colors.blue,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.red,
      ),
    );
  }
}