import 'dart:async';

import 'package:extra_work/profilepage_task01.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            child: Column(
              children: [

                Image.asset("images/01.jpg",width: 500,height: 500),

                ElevatedButton(onPressed:()
                {
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>profilepage()));

                },
                    child: Text("Profile")

                )
              ],

            )
        )
    );
  }
}
