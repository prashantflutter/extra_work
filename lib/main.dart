import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'Pages/loginPage.dart';
import 'homepage_task01.dart';


void main()
{
  runApp(MaterialApp(home:LoginPage(),
  debugShowCheckedModeBanner: false,));
}

class Mainpage extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {
    throw UnimplementedError();
  }
}

class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),() => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepage())));

  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(body: Center(child: Lottie.asset("images/001.json",width:250,height:250),),);
  }
}


