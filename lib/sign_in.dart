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
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.red,
          ),
          child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.arrow_back),
          ),
        ),
      ),
      body: Container(
        color: Colors.greenAccent,
        width: screenWidth,
        height: screenHeight,
        padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
        child: Column(
          children: [
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              ),

            )
          ],
        ),
      ),
    );
  }
}