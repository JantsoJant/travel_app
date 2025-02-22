import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget{
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen>{
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Colors.greenAccent,
        width: screenWidth,
        height: screenHeight,
        padding: EdgeInsets.fromLTRB(20, 40, 20, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(100),
              ),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,size: 20,))
            ),
            SizedBox(height: 20,),
            Container(
              color: Colors.white,
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "Sign in now",
                      style: TextStyle(
                        fontFamily: "SUDisplay",
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        height: 34/26,
                        letterSpacing: 0,
                      ),
                    ),
                    Text(
                      "Please sign in to continue our app",
                      style: TextStyle(
                        color: Color(0xFF7D848D),
                        fontFamily: "SUDisplay",
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        height: 20/16,
                        letterSpacing: 0,
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Hello",

                      )
                    )
                  ],
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}