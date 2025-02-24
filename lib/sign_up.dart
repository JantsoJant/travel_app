import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatefulWidget{
  const SignUpScreen({super.key});
  @override
  State<SignUpScreen> createState()=> _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isObscured = true;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: screenWidth,
          height: screenHeight,
          padding: EdgeInsets.fromLTRB(20, 50, 20, 30),
          child: Container(
            color: Colors.white,
            width: screenWidth,
            height: screenHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFFF7F7F9),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.chevron_left,
                        size: 20,
                        color: Color(0xFF1B1E28),
                      )
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: screenHeight*0.7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: screenHeight*0.54,
                        width: screenWidth,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Sign up now",
                                  style: TextStyle(
                                    fontFamily: "SUDisplay",
                                    fontSize: 26,
                                    fontWeight: FontWeight.w700,
                                    height: 34/26,
                                    letterSpacing: 0,
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  "Please fill the details and create account",
                                  style: TextStyle(
                                    color: Color(0xFF7D848D),
                                    fontFamily: "SUDisplay",
                                    fontWeight: FontWeight.w300,
                                    fontSize: 16,
                                    height: 20/16,
                                    letterSpacing: 0,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 220,
                              color: Colors.white,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  TextField(
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "SUDisplay",
                                      color: Color(0xFF1B1E28),
                                      fontWeight: FontWeight.w300,
                                      height: 20/16,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: "Name",
                                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                      hintStyle: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "SUDisplay",
                                        color: Color(0xFF1B1E28),
                                        fontWeight: FontWeight.w300,
                                        height: 20/16,
                                      ),
                                      filled: true,
                                      fillColor: Color(0xFFF7F7F9),
                                      border: InputBorder.none,
                                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14),borderSide: BorderSide(color: Colors.transparent)),
                                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14),borderSide: BorderSide(color: Colors.transparent)),
                                      hoverColor: Colors.transparent,
                                    ),
                                  ),
                                  TextField(
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "SUDisplay",
                                      color: Color(0xFF1B1E28),
                                      fontWeight: FontWeight.w300,
                                      height: 20/16,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: "Email",
                                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                      hintStyle: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "SUDisplay",
                                        color: Color(0xFF1B1E28),
                                        fontWeight: FontWeight.w300,
                                        height: 20/16,
                                      ),
                                      filled: true,
                                      fillColor: Color(0xFFF7F7F9),
                                      border: InputBorder.none,
                                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14),borderSide: BorderSide(color: Colors.transparent)),
                                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14),borderSide: BorderSide(color: Colors.transparent)),
                                      hoverColor: Colors.transparent,
                                    ),
                                  ),
                                  TextField(
                                    obscureText: _isObscured,
                                    obscuringCharacter: '*',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "SUDisplay",
                                      color: Color(0xFF1B1E28),
                                      fontWeight: FontWeight.w300,
                                      height: 20/16,
                                    ),
                                    decoration: InputDecoration(
                                        hintText: "Password",
                                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "SUDisplay",
                                          color: Color(0xFF7D848D),
                                          fontWeight: FontWeight.w300,
                                          height: 20/16,
                                        ),
                                        filled: true,
                                        fillColor: Color(0xFFF7F7F9),
                                        border: InputBorder.none,
                                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14),borderSide: BorderSide(color: Colors.transparent)),
                                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14),borderSide: BorderSide(color: Colors.transparent)),
                                        hoverColor: Colors.transparent,
                                        suffixIcon: IconButton(
                                          onPressed: (){
                                            setState(() {
                                              _isObscured = !_isObscured;
                                            });
                                          },
                                          icon: Icon(_isObscured ? Icons.visibility_off : Icons.visibility,color: Colors.grey,),
                                        )
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Password must be 8 characters",
                                        style: TextStyle(
                                          fontFamily: "SUDisplay",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          height: 16/14,
                                          color: Color(0xFF7D848D),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: screenWidth,
                              child: ElevatedButton(
                                onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF0D6EFD),
                                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    fontFamily: "SUDisplay",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    height: 20 / 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Already have an account?",
                                  style: TextStyle(
                                      fontFamily: "SUDisplay",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      height: 16/14,
                                      color: Color(0xFF707B81)
                                  ),
                                ),
                                TextButton(
                                    onPressed: (){},
                                    child: Text(
                                      "Sign in",
                                      style: TextStyle(
                                        color: Color(0xFF0D6EFD),
                                        fontSize: 14,
                                        fontFamily: "SUDisplay",
                                        fontWeight: FontWeight.w400,
                                        height: 16/14,
                                      ),
                                    )
                                )
                              ],
                            ),
                            Text(
                              "Or connect",
                              style: TextStyle(
                                  fontFamily: "SUDisplay",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  height: 16/14,
                                  color: Color(0xFF707B81)
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    color: Colors.white,
                    // height: screenHeight*0.08,
                    width: screenWidth*0.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: 45, // Diameter (2 * radius)
                            height: 45,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF1877F2),
                            ),
                            child: Center(
                              child: SvgPicture.asset("assets/images/fb-vector.svg"),
                            )
                        ),
                        Container(
                          width: 45, // Diameter (2 * radius)
                          height: 45,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFFFD521),
                                Color(0xFFF50000),
                                Color(0xFFB900B4),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Center(
                            child: SvgPicture.asset("assets/images/insta-vector.svg"),
                          ),
                        ),
                        Container(
                          width: 45, // Diameter (2 * radius)
                          height: 45,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF03A9F4),
                          ),
                          child: Center(
                            child: SvgPicture.asset("assets/images/twitter-vector.svg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}